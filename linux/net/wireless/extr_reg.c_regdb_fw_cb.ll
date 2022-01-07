; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_regdb_fw_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_regdb_fw_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to load regulatory.db\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"loaded regulatory.db is malformed or signature is missing/invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@regdb = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @regdb_fw_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regdb_fw_cb(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %8 = load %struct.firmware*, %struct.firmware** %3, align 8
  %9 = icmp ne %struct.firmware* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ENODATA, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %5, align 4
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.firmware*, %struct.firmware** %3, align 8
  %16 = getelementptr inbounds %struct.firmware, %struct.firmware* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.firmware*, %struct.firmware** %3, align 8
  %19 = getelementptr inbounds %struct.firmware, %struct.firmware* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @valid_regdb(i32 %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %14
  %24 = call i32 @pr_info(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %23, %14
  br label %28

28:                                               ; preds = %27, %10
  %29 = call i32 (...) @rtnl_lock()
  %30 = load i8*, i8** @regdb, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i8*, i8** @regdb, align 8
  %34 = call i32 @IS_ERR(i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %72

37:                                               ; preds = %32, %28
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = call i8* @ERR_PTR(i32 %41)
  store i8* %42, i8** @regdb, align 8
  br label %71

43:                                               ; preds = %37
  %44 = load %struct.firmware*, %struct.firmware** %3, align 8
  %45 = icmp ne %struct.firmware* %44, null
  br i1 %45, label %46, label %70

46:                                               ; preds = %43
  %47 = load %struct.firmware*, %struct.firmware** %3, align 8
  %48 = getelementptr inbounds %struct.firmware, %struct.firmware* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.firmware*, %struct.firmware** %3, align 8
  %51 = getelementptr inbounds %struct.firmware, %struct.firmware* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @kmemdup(i32 %49, i32 %52, i32 %53)
  store i8* %54, i8** %7, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %46
  %58 = load i8*, i8** %7, align 8
  store i8* %58, i8** @regdb, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i8*, i8** %4, align 8
  %63 = call i64 @query_regdb(i8* %62)
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %61, %57
  %66 = phi i1 [ false, %57 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %6, align 4
  br label %69

68:                                               ; preds = %46
  store i32 1, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %65
  br label %70

70:                                               ; preds = %69, %43
  br label %71

71:                                               ; preds = %70, %40
  br label %72

72:                                               ; preds = %71, %36
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i32 @restore_regulatory_settings(i32 1, i32 0)
  br label %77

77:                                               ; preds = %75, %72
  %78 = call i32 (...) @rtnl_unlock()
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @kfree(i8* %79)
  %81 = load %struct.firmware*, %struct.firmware** %3, align 8
  %82 = call i32 @release_firmware(%struct.firmware* %81)
  ret void
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @valid_regdb(i32, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @kmemdup(i32, i32, i32) #1

declare dso_local i64 @query_regdb(i8*) #1

declare dso_local i32 @restore_regulatory_settings(i32, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
