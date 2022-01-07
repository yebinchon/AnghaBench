; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_add_se.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_add_se.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32, i32 }
%struct.nfc_se = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"%s se index %d\0A\00", align 1
@EALREADY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFC_SE_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_add_se(%struct.nfc_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfc_se*, align 8
  %9 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %11 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %10, i32 0, i32 1
  %12 = call i32 @dev_name(i32* %11)
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.nfc_se* @nfc_find_se(%struct.nfc_dev* %15, i32 %16)
  store %struct.nfc_se* %17, %struct.nfc_se** %8, align 8
  %18 = load %struct.nfc_se*, %struct.nfc_se** %8, align 8
  %19 = icmp ne %struct.nfc_se* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EALREADY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %63

23:                                               ; preds = %3
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.nfc_se* @kzalloc(i32 16, i32 %24)
  store %struct.nfc_se* %25, %struct.nfc_se** %8, align 8
  %26 = load %struct.nfc_se*, %struct.nfc_se** %8, align 8
  %27 = icmp ne %struct.nfc_se* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %63

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.nfc_se*, %struct.nfc_se** %8, align 8
  %34 = getelementptr inbounds %struct.nfc_se, %struct.nfc_se* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.nfc_se*, %struct.nfc_se** %8, align 8
  %37 = getelementptr inbounds %struct.nfc_se, %struct.nfc_se* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @NFC_SE_DISABLED, align 4
  %39 = load %struct.nfc_se*, %struct.nfc_se** %8, align 8
  %40 = getelementptr inbounds %struct.nfc_se, %struct.nfc_se* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.nfc_se*, %struct.nfc_se** %8, align 8
  %42 = getelementptr inbounds %struct.nfc_se, %struct.nfc_se* %41, i32 0, i32 0
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.nfc_se*, %struct.nfc_se** %8, align 8
  %45 = getelementptr inbounds %struct.nfc_se, %struct.nfc_se* %44, i32 0, i32 0
  %46 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %47 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %46, i32 0, i32 0
  %48 = call i32 @list_add(i32* %45, i32* %47)
  %49 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @nfc_genl_se_added(%struct.nfc_dev* %49, i32 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %31
  %56 = load %struct.nfc_se*, %struct.nfc_se** %8, align 8
  %57 = getelementptr inbounds %struct.nfc_se, %struct.nfc_se* %56, i32 0, i32 0
  %58 = call i32 @list_del(i32* %57)
  %59 = load %struct.nfc_se*, %struct.nfc_se** %8, align 8
  %60 = call i32 @kfree(%struct.nfc_se* %59)
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %63

62:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %55, %28, %20
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local %struct.nfc_se* @nfc_find_se(%struct.nfc_dev*, i32) #1

declare dso_local %struct.nfc_se* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @nfc_genl_se_added(%struct.nfc_dev*, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.nfc_se*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
