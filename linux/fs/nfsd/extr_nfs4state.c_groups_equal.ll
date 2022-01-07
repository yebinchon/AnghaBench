; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_groups_equal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_groups_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group_info = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.group_info*, %struct.group_info*)* @groups_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @groups_equal(%struct.group_info* %0, %struct.group_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.group_info*, align 8
  %5 = alloca %struct.group_info*, align 8
  %6 = alloca i32, align 4
  store %struct.group_info* %0, %struct.group_info** %4, align 8
  store %struct.group_info* %1, %struct.group_info** %5, align 8
  %7 = load %struct.group_info*, %struct.group_info** %4, align 8
  %8 = getelementptr inbounds %struct.group_info, %struct.group_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.group_info*, %struct.group_info** %5, align 8
  %11 = getelementptr inbounds %struct.group_info, %struct.group_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %41, %15
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.group_info*, %struct.group_info** %4, align 8
  %19 = getelementptr inbounds %struct.group_info, %struct.group_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = load %struct.group_info*, %struct.group_info** %4, align 8
  %24 = getelementptr inbounds %struct.group_info, %struct.group_info* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.group_info*, %struct.group_info** %5, align 8
  %31 = getelementptr inbounds %struct.group_info, %struct.group_info* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @gid_eq(i32 %29, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %45

40:                                               ; preds = %22
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %16

44:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %39, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @gid_eq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
