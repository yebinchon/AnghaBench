; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_sk_clone_security.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_sk_clone_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type opaque
%struct.aa_sk_ctx = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sock*)* @apparmor_sk_clone_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apparmor_sk_clone_security(%struct.sock* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.aa_sk_ctx*, align 8
  %6 = alloca %struct.aa_sk_ctx*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.aa_sk_ctx* @SK_CTX(%struct.sock* %7)
  store %struct.aa_sk_ctx* %8, %struct.aa_sk_ctx** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.aa_sk_ctx* @SK_CTX(%struct.sock* %9)
  store %struct.aa_sk_ctx* %10, %struct.aa_sk_ctx** %6, align 8
  %11 = load %struct.aa_sk_ctx*, %struct.aa_sk_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.aa_sk_ctx, %struct.aa_sk_ctx* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = call i8* @aa_get_label(i8* %13)
  %15 = load %struct.aa_sk_ctx*, %struct.aa_sk_ctx** %6, align 8
  %16 = getelementptr inbounds %struct.aa_sk_ctx, %struct.aa_sk_ctx* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.aa_sk_ctx*, %struct.aa_sk_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.aa_sk_ctx, %struct.aa_sk_ctx* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @aa_get_label(i8* %19)
  %21 = load %struct.aa_sk_ctx*, %struct.aa_sk_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.aa_sk_ctx, %struct.aa_sk_ctx* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  ret void
}

declare dso_local %struct.aa_sk_ctx* @SK_CTX(%struct.sock*) #1

declare dso_local i8* @aa_get_label(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
