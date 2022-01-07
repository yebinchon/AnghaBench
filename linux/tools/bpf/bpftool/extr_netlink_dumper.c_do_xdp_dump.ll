; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_netlink_dumper.c_do_xdp_dump.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_netlink_dumper.c_do_xdp_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifinfomsg = type { i32 }
%struct.nlattr = type { i32 }

@IFLA_XDP = common dso_local global i64 0, align 8
@IFLA_IFNAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_xdp_dump(%struct.ifinfomsg* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifinfomsg*, align 8
  %5 = alloca %struct.nlattr**, align 8
  store %struct.ifinfomsg* %0, %struct.ifinfomsg** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %6 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %7 = load i64, i64* @IFLA_XDP, align 8
  %8 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %6, i64 %7
  %9 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %10 = icmp ne %struct.nlattr* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

12:                                               ; preds = %2
  %13 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %14 = load i64, i64* @IFLA_XDP, align 8
  %15 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %14
  %16 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %17 = load %struct.ifinfomsg*, %struct.ifinfomsg** %4, align 8
  %18 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %21 = load i64, i64* @IFLA_IFNAME, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = call i32 @libbpf_nla_getattr_str(%struct.nlattr* %23)
  %25 = call i32 @do_xdp_dump_one(%struct.nlattr* %16, i32 %19, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %12, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @do_xdp_dump_one(%struct.nlattr*, i32, i32) #1

declare dso_local i32 @libbpf_nla_getattr_str(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
