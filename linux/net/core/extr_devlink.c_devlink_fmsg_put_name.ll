; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_fmsg_put_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_fmsg_put_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_fmsg = type { i32 }
%struct.devlink_fmsg_item = type { i32, i64, i32, i32, i32 }

@DEVLINK_FMSG_MAX_SIZE = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NLA_NUL_STRING = common dso_local global i32 0, align 4
@DEVLINK_ATTR_FMSG_OBJ_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_fmsg*, i8*)* @devlink_fmsg_put_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_fmsg_put_name(%struct.devlink_fmsg* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devlink_fmsg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.devlink_fmsg_item*, align 8
  store %struct.devlink_fmsg* %0, %struct.devlink_fmsg** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @strlen(i8* %7)
  %9 = add nsw i64 %8, 1
  %10 = load i64, i64* @DEVLINK_FMSG_MAX_SIZE, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EMSGSIZE, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %51

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = add i64 32, %17
  %19 = add i64 %18, 1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.devlink_fmsg_item* @kzalloc(i64 %19, i32 %20)
  store %struct.devlink_fmsg_item* %21, %struct.devlink_fmsg_item** %6, align 8
  %22 = load %struct.devlink_fmsg_item*, %struct.devlink_fmsg_item** %6, align 8
  %23 = icmp ne %struct.devlink_fmsg_item* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %51

27:                                               ; preds = %15
  %28 = load i32, i32* @NLA_NUL_STRING, align 4
  %29 = load %struct.devlink_fmsg_item*, %struct.devlink_fmsg_item** %6, align 8
  %30 = getelementptr inbounds %struct.devlink_fmsg_item, %struct.devlink_fmsg_item* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @strlen(i8* %31)
  %33 = add nsw i64 %32, 1
  %34 = load %struct.devlink_fmsg_item*, %struct.devlink_fmsg_item** %6, align 8
  %35 = getelementptr inbounds %struct.devlink_fmsg_item, %struct.devlink_fmsg_item* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @DEVLINK_ATTR_FMSG_OBJ_NAME, align 4
  %37 = load %struct.devlink_fmsg_item*, %struct.devlink_fmsg_item** %6, align 8
  %38 = getelementptr inbounds %struct.devlink_fmsg_item, %struct.devlink_fmsg_item* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.devlink_fmsg_item*, %struct.devlink_fmsg_item** %6, align 8
  %40 = getelementptr inbounds %struct.devlink_fmsg_item, %struct.devlink_fmsg_item* %39, i32 0, i32 2
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.devlink_fmsg_item*, %struct.devlink_fmsg_item** %6, align 8
  %43 = getelementptr inbounds %struct.devlink_fmsg_item, %struct.devlink_fmsg_item* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @memcpy(i32* %40, i8* %41, i64 %44)
  %46 = load %struct.devlink_fmsg_item*, %struct.devlink_fmsg_item** %6, align 8
  %47 = getelementptr inbounds %struct.devlink_fmsg_item, %struct.devlink_fmsg_item* %46, i32 0, i32 0
  %48 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %4, align 8
  %49 = getelementptr inbounds %struct.devlink_fmsg, %struct.devlink_fmsg* %48, i32 0, i32 0
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %27, %24, %12
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.devlink_fmsg_item* @kzalloc(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
