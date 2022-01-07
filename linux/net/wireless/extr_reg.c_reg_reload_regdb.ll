; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_reload_regdb.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_reload_regdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"regulatory.db\00", align 1
@reg_pdev = common dso_local global %struct.TYPE_2__* null, align 8
@ENODATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@regdb = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reg_reload_regdb() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.firmware*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_pdev, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @request_firmware(%struct.firmware** %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %1, align 4
  br label %53

12:                                               ; preds = %0
  %13 = load %struct.firmware*, %struct.firmware** %2, align 8
  %14 = getelementptr inbounds %struct.firmware, %struct.firmware* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.firmware*, %struct.firmware** %2, align 8
  %17 = getelementptr inbounds %struct.firmware, %struct.firmware* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @valid_regdb(i32 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* @ENODATA, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %49

24:                                               ; preds = %12
  %25 = load %struct.firmware*, %struct.firmware** %2, align 8
  %26 = getelementptr inbounds %struct.firmware, %struct.firmware* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.firmware*, %struct.firmware** %2, align 8
  %29 = getelementptr inbounds %struct.firmware, %struct.firmware* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kmemdup(i32 %27, i32 %30, i32 %31)
  store i8* %32, i8** %3, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %24
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %49

38:                                               ; preds = %24
  %39 = call i32 (...) @rtnl_lock()
  %40 = load i8*, i8** @regdb, align 8
  %41 = call i32 @IS_ERR_OR_NULL(i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** @regdb, align 8
  %45 = call i32 @kfree(i8* %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i8*, i8** %3, align 8
  store i8* %47, i8** @regdb, align 8
  %48 = call i32 (...) @rtnl_unlock()
  br label %49

49:                                               ; preds = %46, %35, %21
  %50 = load %struct.firmware*, %struct.firmware** %2, align 8
  %51 = call i32 @release_firmware(%struct.firmware* %50)
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %1, align 4
  br label %53

53:                                               ; preds = %49, %10
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @valid_regdb(i32, i32) #1

declare dso_local i8* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @IS_ERR_OR_NULL(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
