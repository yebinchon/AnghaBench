; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_mech_switch.c_gss_mech_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_mech_switch.c_gss_mech_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_api_mech = type { i32, %struct.pf_desc* }
%struct.pf_desc = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gss_api_mech*)* @gss_mech_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gss_mech_free(%struct.gss_api_mech* %0) #0 {
  %2 = alloca %struct.gss_api_mech*, align 8
  %3 = alloca %struct.pf_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.gss_api_mech* %0, %struct.gss_api_mech** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.gss_api_mech*, %struct.gss_api_mech** %2, align 8
  %8 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %5
  %12 = load %struct.gss_api_mech*, %struct.gss_api_mech** %2, align 8
  %13 = getelementptr inbounds %struct.gss_api_mech, %struct.gss_api_mech* %12, i32 0, i32 1
  %14 = load %struct.pf_desc*, %struct.pf_desc** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.pf_desc, %struct.pf_desc* %14, i64 %16
  store %struct.pf_desc* %17, %struct.pf_desc** %3, align 8
  %18 = load %struct.pf_desc*, %struct.pf_desc** %3, align 8
  %19 = getelementptr inbounds %struct.pf_desc, %struct.pf_desc* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @kfree(i32* %20)
  %22 = load %struct.pf_desc*, %struct.pf_desc** %3, align 8
  %23 = getelementptr inbounds %struct.pf_desc, %struct.pf_desc* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %11
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %5

27:                                               ; preds = %5
  ret void
}

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
