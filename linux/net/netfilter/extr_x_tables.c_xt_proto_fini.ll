; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_x_tables.c_xt_proto_fini.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_x_tables.c_xt_proto_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }

@FORMAT_MATCHES = common dso_local global i32 0, align 4
@FORMAT_TABLES = common dso_local global i32 0, align 4
@FORMAT_TARGETS = common dso_local global i32 0, align 4
@XT_FUNCTION_MAXNAMELEN = common dso_local global i32 0, align 4
@xt_prefix = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xt_proto_fini(%struct.net* %0, i64 %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store i64 %1, i64* %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
