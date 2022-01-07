; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_proto_check_kind.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_proto_check_kind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

@IFNAMSIZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, i8*)* @tcf_proto_check_kind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_proto_check_kind(%struct.nlattr* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca i8*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %7 = icmp ne %struct.nlattr* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %11 = load i64, i64* @IFNAMSIZ, align 8
  %12 = call i64 @nla_strlcpy(i8* %9, %struct.nlattr* %10, i64 %11)
  %13 = load i64, i64* @IFNAMSIZ, align 8
  %14 = icmp sge i64 %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* @IFNAMSIZ, align 8
  %19 = call i32 @memset(i8* %17, i32 0, i64 %18)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %8
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i64 @nla_strlcpy(i8*, %struct.nlattr*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
