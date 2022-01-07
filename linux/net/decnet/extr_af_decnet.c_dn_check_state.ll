; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_dn_check_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_dn_check_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sockaddr_dn = type { i32 }
%struct.dn_scp = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr_dn*, i32, i64*, i32)* @dn_check_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_check_state(%struct.sock* %0, %struct.sockaddr_dn* %1, i32 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sockaddr_dn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dn_scp*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.sockaddr_dn* %1, %struct.sockaddr_dn** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.sock*, %struct.sock** %7, align 8
  %14 = call %struct.dn_scp* @DN_SK(%struct.sock* %13)
  store %struct.dn_scp* %14, %struct.dn_scp** %12, align 8
  %15 = load %struct.dn_scp*, %struct.dn_scp** %12, align 8
  %16 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %37 [
    i32 128, label %18
    i32 130, label %19
    i32 131, label %26
    i32 132, label %26
    i32 129, label %30
  ]

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %40

19:                                               ; preds = %5
  %20 = load %struct.sock*, %struct.sock** %7, align 8
  %21 = load i64*, i64** %10, align 8
  %22 = load %struct.sock*, %struct.sock** %7, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dn_confirm_accept(%struct.sock* %20, i64* %21, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %40

26:                                               ; preds = %5, %5
  %27 = load %struct.sock*, %struct.sock** %7, align 8
  %28 = load i64*, i64** %10, align 8
  %29 = call i32 @dn_wait_run(%struct.sock* %27, i64* %28)
  store i32 %29, i32* %6, align 4
  br label %40

30:                                               ; preds = %5
  %31 = load %struct.sock*, %struct.sock** %7, align 8
  %32 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i64*, i64** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @__dn_connect(%struct.sock* %31, %struct.sockaddr_dn* %32, i32 %33, i64* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %40

37:                                               ; preds = %5
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %37, %30, %26, %19, %18
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @dn_confirm_accept(%struct.sock*, i64*, i32) #1

declare dso_local i32 @dn_wait_run(%struct.sock*, i64*) #1

declare dso_local i32 @__dn_connect(%struct.sock*, %struct.sockaddr_dn*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
