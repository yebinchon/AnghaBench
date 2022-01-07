; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_encode_v0_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_auth_gss.c_gss_encode_v0_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_upcall_msg = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cred = type { %struct.user_namespace* }
%struct.user_namespace = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gss_upcall_msg*, %struct.cred*)* @gss_encode_v0_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gss_encode_v0_msg(%struct.gss_upcall_msg* %0, %struct.cred* %1) #0 {
  %3 = alloca %struct.gss_upcall_msg*, align 8
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.user_namespace*, align 8
  %6 = alloca i32, align 4
  store %struct.gss_upcall_msg* %0, %struct.gss_upcall_msg** %3, align 8
  store %struct.cred* %1, %struct.cred** %4, align 8
  %7 = load %struct.cred*, %struct.cred** %4, align 8
  %8 = getelementptr inbounds %struct.cred, %struct.cred* %7, i32 0, i32 0
  %9 = load %struct.user_namespace*, %struct.user_namespace** %8, align 8
  store %struct.user_namespace* %9, %struct.user_namespace** %5, align 8
  %10 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %11 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %3, align 8
  %12 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @from_kuid_munged(%struct.user_namespace* %10, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %3, align 8
  %16 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memcpy(i32 %17, i32* %6, i32 4)
  %19 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %3, align 8
  %20 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %3, align 8
  %23 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %3, align 8
  %26 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 4, i32* %27, align 4
  %28 = call i32 @BUILD_BUG_ON(i32 0)
  ret void
}

declare dso_local i32 @from_kuid_munged(%struct.user_namespace*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
