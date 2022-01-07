; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_mech_switch.c_gss_wrap.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_mech_switch.c_gss_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.xdr_buf = type { i32 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_wrap(%struct.gss_ctx* %0, i32 %1, %struct.xdr_buf* %2, %struct.page** %3) #0 {
  %5 = alloca %struct.gss_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xdr_buf*, align 8
  %8 = alloca %struct.page**, align 8
  store %struct.gss_ctx* %0, %struct.gss_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.xdr_buf* %2, %struct.xdr_buf** %7, align 8
  store %struct.page** %3, %struct.page*** %8, align 8
  %9 = load %struct.gss_ctx*, %struct.gss_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.gss_ctx, %struct.gss_ctx* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.gss_ctx*, i32, %struct.xdr_buf*, %struct.page**)**
  %16 = load i32 (%struct.gss_ctx*, i32, %struct.xdr_buf*, %struct.page**)*, i32 (%struct.gss_ctx*, i32, %struct.xdr_buf*, %struct.page**)** %15, align 8
  %17 = load %struct.gss_ctx*, %struct.gss_ctx** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %20 = load %struct.page**, %struct.page*** %8, align 8
  %21 = call i32 %16(%struct.gss_ctx* %17, i32 %18, %struct.xdr_buf* %19, %struct.page** %20)
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
