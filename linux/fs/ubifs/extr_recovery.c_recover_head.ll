; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_recovery.c_recover_head.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_recovery.c_recover_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"cleaning head at %d:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32, i8*)* @recover_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recover_head(%struct.ubifs_info* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %10, align 4
  %17 = add nsw i32 %15, %16
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %19 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %22, %4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %73

32:                                               ; preds = %28
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @ubifs_leb_read(%struct.ubifs_info* %33, i32 %34, i8* %35, i32 %36, i32 %37, i32 1)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %32
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @is_empty(i8* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %72, label %46

46:                                               ; preds = %41, %32
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @dbg_rcvry(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %53, i32 %54)
  store i32 %55, i32* %5, align 4
  br label %73

56:                                               ; preds = %46
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @ubifs_leb_read(%struct.ubifs_info* %57, i32 %58, i8* %59, i32 0, i32 %60, i32 1)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %73

66:                                               ; preds = %56
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @ubifs_leb_change(%struct.ubifs_info* %67, i32 %68, i8* %69, i32 %70)
  store i32 %71, i32* %5, align 4
  br label %73

72:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %66, %64, %52, %31
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @ubifs_leb_read(%struct.ubifs_info*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @is_empty(i8*, i32) #1

declare dso_local i32 @dbg_rcvry(i8*, i32, i32) #1

declare dso_local i32 @ubifs_leb_unmap(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_leb_change(%struct.ubifs_info*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
