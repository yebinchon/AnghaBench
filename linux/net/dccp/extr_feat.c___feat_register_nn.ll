; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_feat.c___feat_register_nn.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_feat.c___feat_register_nn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.TYPE_3__ = type { i64 }

@FEAT_NN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, i32, i32, i64)* @__feat_register_nn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__feat_register_nn(%struct.list_head* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  store %struct.list_head* %0, %struct.list_head** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %9, align 8
  store i64 %12, i64* %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @dccp_feat_type(i32 %13)
  %15 = load i64, i64* @FEAT_NN, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @dccp_feat_is_valid_nn_val(i32 %18, i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17, %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %37

25:                                               ; preds = %17
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @dccp_feat_default_value(i32 %27)
  %29 = sub nsw i64 %26, %28
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %37

32:                                               ; preds = %25
  %33 = load %struct.list_head*, %struct.list_head** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @dccp_feat_push_change(%struct.list_head* %33, i32 %34, i32 1, i32 %35, %struct.TYPE_3__* %10)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %31, %22
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i64 @dccp_feat_type(i32) #1

declare dso_local i32 @dccp_feat_is_valid_nn_val(i32, i64) #1

declare dso_local i64 @dccp_feat_default_value(i32) #1

declare dso_local i32 @dccp_feat_push_change(%struct.list_head*, i32, i32, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
