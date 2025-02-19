; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_proto_is_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_proto_is_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto_ops = type { i32, i32 }

@TCF_PROTO_OPS_DOIT_UNLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @tcf_proto_is_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_proto_is_unlocked(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tcf_proto_ops*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strlen(i8* %6)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call %struct.tcf_proto_ops* @tcf_proto_lookup_ops(i8* %11, i32 0, i32* null)
  store %struct.tcf_proto_ops* %12, %struct.tcf_proto_ops** %4, align 8
  %13 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %4, align 8
  %14 = call i64 @IS_ERR(%struct.tcf_proto_ops* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %32

17:                                               ; preds = %10
  %18 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %4, align 8
  %19 = getelementptr inbounds %struct.tcf_proto_ops, %struct.tcf_proto_ops* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TCF_PROTO_OPS_DOIT_UNLOCKED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %5, align 4
  %27 = load %struct.tcf_proto_ops*, %struct.tcf_proto_ops** %4, align 8
  %28 = getelementptr inbounds %struct.tcf_proto_ops, %struct.tcf_proto_ops* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @module_put(i32 %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %17, %16, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.tcf_proto_ops* @tcf_proto_lookup_ops(i8*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.tcf_proto_ops*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
