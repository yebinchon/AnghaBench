; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_nlattr.c___nla_validate.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_nlattr.c___nla_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nla_policy = type { i32 }
%struct.netlink_ext_ack = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__nla_validate(%struct.nlattr* %0, i32 %1, i32 %2, %struct.nla_policy* %3, i32 %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nla_policy*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.nla_policy* %3, %struct.nla_policy** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %12, align 8
  %13 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.nla_policy*, %struct.nla_policy** %10, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %19 = call i32 @__nla_validate_parse(%struct.nlattr* %13, i32 %14, i32 %15, %struct.nla_policy* %16, i32 %17, %struct.netlink_ext_ack* %18, i32* null)
  ret i32 %19
}

declare dso_local i32 @__nla_validate_parse(%struct.nlattr*, i32, i32, %struct.nla_policy*, i32, %struct.netlink_ext_ack*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
