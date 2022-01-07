; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_flash_update_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_flash_update_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink = type { i32 }

@devlink_nl_family = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DEVLINK_CMD_FLASH_UPDATE_STATUS = common dso_local global i32 0, align 4
@DEVLINK_ATTR_FLASH_UPDATE_STATUS_MSG = common dso_local global i32 0, align 4
@DEVLINK_ATTR_FLASH_UPDATE_COMPONENT = common dso_local global i32 0, align 4
@DEVLINK_ATTR_FLASH_UPDATE_STATUS_DONE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_PAD = common dso_local global i32 0, align 4
@DEVLINK_ATTR_FLASH_UPDATE_STATUS_TOTAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.devlink*, i32, i8*, i8*, i64, i64)* @devlink_nl_flash_update_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_flash_update_fill(%struct.sk_buff* %0, %struct.devlink* %1, i32 %2, i8* %3, i8* %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.devlink*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.devlink* %1, %struct.devlink** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i8* @genlmsg_put(%struct.sk_buff* %17, i32 0, i32 0, i32* @devlink_nl_family, i32 0, i32 %18)
  store i8* %19, i8** %16, align 8
  %20 = load i8*, i8** %16, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = load i32, i32* @EMSGSIZE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %83

25:                                               ; preds = %7
  %26 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %27 = load %struct.devlink*, %struct.devlink** %10, align 8
  %28 = call i64 @devlink_nl_put_handle(%struct.sk_buff* %26, %struct.devlink* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %77

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @DEVLINK_CMD_FLASH_UPDATE_STATUS, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %73

36:                                               ; preds = %31
  %37 = load i8*, i8** %12, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %41 = load i32, i32* @DEVLINK_ATTR_FLASH_UPDATE_STATUS_MSG, align 4
  %42 = load i8*, i8** %12, align 8
  %43 = call i64 @nla_put_string(%struct.sk_buff* %40, i32 %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %77

46:                                               ; preds = %39, %36
  %47 = load i8*, i8** %13, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %51 = load i32, i32* @DEVLINK_ATTR_FLASH_UPDATE_COMPONENT, align 4
  %52 = load i8*, i8** %13, align 8
  %53 = call i64 @nla_put_string(%struct.sk_buff* %50, i32 %51, i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %77

56:                                               ; preds = %49, %46
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = load i32, i32* @DEVLINK_ATTR_FLASH_UPDATE_STATUS_DONE, align 4
  %59 = load i64, i64* %14, align 8
  %60 = load i32, i32* @DEVLINK_ATTR_PAD, align 4
  %61 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %57, i32 %58, i64 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %77

64:                                               ; preds = %56
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = load i32, i32* @DEVLINK_ATTR_FLASH_UPDATE_STATUS_TOTAL, align 4
  %67 = load i64, i64* %15, align 8
  %68 = load i32, i32* @DEVLINK_ATTR_PAD, align 4
  %69 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %65, i32 %66, i64 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %77

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %35
  %74 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %75 = load i8*, i8** %16, align 8
  %76 = call i32 @genlmsg_end(%struct.sk_buff* %74, i8* %75)
  store i32 0, i32* %8, align 4
  br label %83

77:                                               ; preds = %71, %63, %55, %45, %30
  %78 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %79 = load i8*, i8** %16, align 8
  %80 = call i32 @genlmsg_cancel(%struct.sk_buff* %78, i8* %79)
  %81 = load i32, i32* @EMSGSIZE, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %77, %73, %22
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @devlink_nl_put_handle(%struct.sk_buff*, %struct.devlink*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i8*) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
