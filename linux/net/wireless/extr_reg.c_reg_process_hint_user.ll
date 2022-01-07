; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_process_hint_user.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_process_hint_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulatory_request = type { i32, i32, i32* }

@REG_REQ_IGNORE = common dso_local global i32 0, align 4
@REG_REQ_ALREADY_SET = common dso_local global i32 0, align 4
@REG_REQ_INTERSECT = common dso_local global i32 0, align 4
@user_alpha2 = common dso_local global i32* null, align 8
@REG_REQ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulatory_request*)* @reg_process_hint_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_process_hint_user(%struct.regulatory_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulatory_request*, align 8
  %4 = alloca i32, align 4
  store %struct.regulatory_request* %0, %struct.regulatory_request** %3, align 8
  %5 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %6 = call i32 @__reg_process_hint_user(%struct.regulatory_request* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @REG_REQ_IGNORE, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @REG_REQ_ALREADY_SET, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %1
  %15 = load i32, i32* @REG_REQ_IGNORE, align 4
  store i32 %15, i32* %2, align 4
  br label %48

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @REG_REQ_INTERSECT, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %22 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %24 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %26 = call i64 @reg_query_database(%struct.regulatory_request* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %16
  %29 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %30 = call i32 @reg_update_last_request(%struct.regulatory_request* %29)
  %31 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %32 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** @user_alpha2, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.regulatory_request*, %struct.regulatory_request** %3, align 8
  %39 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** @user_alpha2, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @REG_REQ_OK, align 4
  store i32 %45, i32* %2, align 4
  br label %48

46:                                               ; preds = %16
  %47 = load i32, i32* @REG_REQ_IGNORE, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %28, %14
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @__reg_process_hint_user(%struct.regulatory_request*) #1

declare dso_local i64 @reg_query_database(%struct.regulatory_request*) #1

declare dso_local i32 @reg_update_last_request(%struct.regulatory_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
