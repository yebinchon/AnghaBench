; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_comp_keys.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_comp_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_key = type { i32 }
%struct.cpu_key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reiserfs_key*, %struct.cpu_key*)* @comp_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_keys(%struct.reiserfs_key* %0, %struct.cpu_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reiserfs_key*, align 8
  %5 = alloca %struct.cpu_key*, align 8
  %6 = alloca i32, align 4
  store %struct.reiserfs_key* %0, %struct.reiserfs_key** %4, align 8
  store %struct.cpu_key* %1, %struct.cpu_key** %5, align 8
  %7 = load %struct.reiserfs_key*, %struct.reiserfs_key** %4, align 8
  %8 = load %struct.cpu_key*, %struct.cpu_key** %5, align 8
  %9 = call i32 @comp_short_keys(%struct.reiserfs_key* %7, %struct.cpu_key* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %57

14:                                               ; preds = %2
  %15 = load %struct.reiserfs_key*, %struct.reiserfs_key** %4, align 8
  %16 = call i32 @le_key_version(%struct.reiserfs_key* %15)
  %17 = load %struct.reiserfs_key*, %struct.reiserfs_key** %4, align 8
  %18 = call i64 @le_key_k_offset(i32 %16, %struct.reiserfs_key* %17)
  %19 = load %struct.cpu_key*, %struct.cpu_key** %5, align 8
  %20 = call i64 @cpu_key_k_offset(%struct.cpu_key* %19)
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %57

23:                                               ; preds = %14
  %24 = load %struct.reiserfs_key*, %struct.reiserfs_key** %4, align 8
  %25 = call i32 @le_key_version(%struct.reiserfs_key* %24)
  %26 = load %struct.reiserfs_key*, %struct.reiserfs_key** %4, align 8
  %27 = call i64 @le_key_k_offset(i32 %25, %struct.reiserfs_key* %26)
  %28 = load %struct.cpu_key*, %struct.cpu_key** %5, align 8
  %29 = call i64 @cpu_key_k_offset(%struct.cpu_key* %28)
  %30 = icmp sgt i64 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %57

32:                                               ; preds = %23
  %33 = load %struct.cpu_key*, %struct.cpu_key** %5, align 8
  %34 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %57

38:                                               ; preds = %32
  %39 = load %struct.reiserfs_key*, %struct.reiserfs_key** %4, align 8
  %40 = call i32 @le_key_version(%struct.reiserfs_key* %39)
  %41 = load %struct.reiserfs_key*, %struct.reiserfs_key** %4, align 8
  %42 = call i64 @le_key_k_type(i32 %40, %struct.reiserfs_key* %41)
  %43 = load %struct.cpu_key*, %struct.cpu_key** %5, align 8
  %44 = call i64 @cpu_key_k_type(%struct.cpu_key* %43)
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %57

47:                                               ; preds = %38
  %48 = load %struct.reiserfs_key*, %struct.reiserfs_key** %4, align 8
  %49 = call i32 @le_key_version(%struct.reiserfs_key* %48)
  %50 = load %struct.reiserfs_key*, %struct.reiserfs_key** %4, align 8
  %51 = call i64 @le_key_k_type(i32 %49, %struct.reiserfs_key* %50)
  %52 = load %struct.cpu_key*, %struct.cpu_key** %5, align 8
  %53 = call i64 @cpu_key_k_type(%struct.cpu_key* %52)
  %54 = icmp sgt i64 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 1, i32* %3, align 4
  br label %57

56:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %55, %46, %37, %31, %22, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @comp_short_keys(%struct.reiserfs_key*, %struct.cpu_key*) #1

declare dso_local i64 @le_key_k_offset(i32, %struct.reiserfs_key*) #1

declare dso_local i32 @le_key_version(%struct.reiserfs_key*) #1

declare dso_local i64 @cpu_key_k_offset(%struct.cpu_key*) #1

declare dso_local i64 @le_key_k_type(i32, %struct.reiserfs_key*) #1

declare dso_local i64 @cpu_key_k_type(%struct.cpu_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
