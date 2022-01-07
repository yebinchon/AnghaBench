; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_nlattr.c_libbpf_nla_parse_nested.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_nlattr.c_libbpf_nla_parse_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.libbpf_nla_policy = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libbpf_nla_parse_nested(%struct.nlattr** %0, i32 %1, %struct.nlattr* %2, %struct.libbpf_nla_policy* %3) #0 {
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.libbpf_nla_policy*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nlattr* %2, %struct.nlattr** %7, align 8
  store %struct.libbpf_nla_policy* %3, %struct.libbpf_nla_policy** %8, align 8
  %9 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %12 = call i32 @libbpf_nla_data(%struct.nlattr* %11)
  %13 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %14 = call i32 @libbpf_nla_len(%struct.nlattr* %13)
  %15 = load %struct.libbpf_nla_policy*, %struct.libbpf_nla_policy** %8, align 8
  %16 = call i32 @libbpf_nla_parse(%struct.nlattr** %9, i32 %10, i32 %12, i32 %14, %struct.libbpf_nla_policy* %15)
  ret i32 %16
}

declare dso_local i32 @libbpf_nla_parse(%struct.nlattr**, i32, i32, i32, %struct.libbpf_nla_policy*) #1

declare dso_local i32 @libbpf_nla_data(%struct.nlattr*) #1

declare dso_local i32 @libbpf_nla_len(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
