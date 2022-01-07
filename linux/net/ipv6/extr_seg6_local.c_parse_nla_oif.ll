; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_parse_nla_oif.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_parse_nla_oif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.seg6_local_lwt = type { i32 }

@SEG6_LOCAL_OIF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.seg6_local_lwt*)* @parse_nla_oif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_nla_oif(%struct.nlattr** %0, %struct.seg6_local_lwt* %1) #0 {
  %3 = alloca %struct.nlattr**, align 8
  %4 = alloca %struct.seg6_local_lwt*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %3, align 8
  store %struct.seg6_local_lwt* %1, %struct.seg6_local_lwt** %4, align 8
  %5 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %6 = load i64, i64* @SEG6_LOCAL_OIF, align 8
  %7 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %5, i64 %6
  %8 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %9 = call i32 @nla_get_u32(%struct.nlattr* %8)
  %10 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %4, align 8
  %11 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  ret i32 0
}

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
