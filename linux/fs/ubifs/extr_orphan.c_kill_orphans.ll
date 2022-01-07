; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_orphan.c_kill_orphans.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_orphan.c_kill_orphans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i64, i32, i64 }
%struct.ubifs_scan_leb = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"no orphans\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"LEB %d\00", align 1
@EUCLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @kill_orphans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kill_orphans(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubifs_scan_leb*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %16 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 (i8*, ...) @dbg_rcvry(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %100

23:                                               ; preds = %1
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %25 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %95, %23
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp sle i32 %28, %31
  br i1 %32, label %33, label %98

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (i8*, ...) @dbg_rcvry(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %39 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.ubifs_scan_leb* @ubifs_scan(%struct.ubifs_info* %36, i32 %37, i32 0, i32 %40, i32 1)
  store %struct.ubifs_scan_leb* %41, %struct.ubifs_scan_leb** %9, align 8
  %42 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %9, align 8
  %43 = call i64 @IS_ERR(%struct.ubifs_scan_leb* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %33
  %46 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %9, align 8
  %47 = call i32 @PTR_ERR(%struct.ubifs_scan_leb* %46)
  %48 = load i32, i32* @EUCLEAN, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %55 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.ubifs_scan_leb* @ubifs_recover_leb(%struct.ubifs_info* %52, i32 %53, i32 0, i32 %56, i32 -1)
  store %struct.ubifs_scan_leb* %57, %struct.ubifs_scan_leb** %9, align 8
  br label %58

58:                                               ; preds = %51, %45
  %59 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %9, align 8
  %60 = call i64 @IS_ERR(%struct.ubifs_scan_leb* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %9, align 8
  %64 = call i32 @PTR_ERR(%struct.ubifs_scan_leb* %63)
  store i32 %64, i32* %6, align 4
  br label %98

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %33
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %68 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %9, align 8
  %69 = call i32 @do_kill_orphans(%struct.ubifs_info* %67, %struct.ubifs_scan_leb* %68, i64* %4, i32* %7, i32* %8)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72, %66
  %76 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %9, align 8
  %77 = call i32 @ubifs_scan_destroy(%struct.ubifs_scan_leb* %76)
  br label %98

78:                                               ; preds = %72
  %79 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %9, align 8
  %80 = getelementptr inbounds %struct.ubifs_scan_leb, %struct.ubifs_scan_leb* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %86 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %9, align 8
  %88 = getelementptr inbounds %struct.ubifs_scan_leb, %struct.ubifs_scan_leb* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %91 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %83, %78
  %93 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %9, align 8
  %94 = call i32 @ubifs_scan_destroy(%struct.ubifs_scan_leb* %93)
  br label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %27

98:                                               ; preds = %75, %62, %27
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %21
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @dbg_rcvry(i8*, ...) #1

declare dso_local %struct.ubifs_scan_leb* @ubifs_scan(%struct.ubifs_info*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_scan_leb*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_scan_leb*) #1

declare dso_local %struct.ubifs_scan_leb* @ubifs_recover_leb(%struct.ubifs_info*, i32, i32, i32, i32) #1

declare dso_local i32 @do_kill_orphans(%struct.ubifs_info*, %struct.ubifs_scan_leb*, i64*, i32*, i32*) #1

declare dso_local i32 @ubifs_scan_destroy(%struct.ubifs_scan_leb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
