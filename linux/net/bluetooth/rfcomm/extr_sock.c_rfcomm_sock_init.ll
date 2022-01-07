; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rfcomm_pinfo = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"sk %p\00", align 1
@BT_SK_DEFER_SETUP = common dso_local global i32 0, align 4
@BT_SECURITY_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sock*)* @rfcomm_sock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_sock_init(%struct.sock* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.rfcomm_pinfo*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.rfcomm_pinfo* @rfcomm_pi(%struct.sock* %6)
  store %struct.rfcomm_pinfo* %7, %struct.rfcomm_pinfo** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.sock* %8)
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = icmp ne %struct.sock* %10, null
  br i1 %11, label %12, label %42

12:                                               ; preds = %2
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @BT_SK_DEFER_SETUP, align 4
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %18, i32* %21)
  %23 = load %struct.rfcomm_pinfo*, %struct.rfcomm_pinfo** %5, align 8
  %24 = getelementptr inbounds %struct.rfcomm_pinfo, %struct.rfcomm_pinfo* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i64 %22, i64* %26, align 8
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = call %struct.rfcomm_pinfo* @rfcomm_pi(%struct.sock* %27)
  %29 = getelementptr inbounds %struct.rfcomm_pinfo, %struct.rfcomm_pinfo* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rfcomm_pinfo*, %struct.rfcomm_pinfo** %5, align 8
  %32 = getelementptr inbounds %struct.rfcomm_pinfo, %struct.rfcomm_pinfo* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = call %struct.rfcomm_pinfo* @rfcomm_pi(%struct.sock* %33)
  %35 = getelementptr inbounds %struct.rfcomm_pinfo, %struct.rfcomm_pinfo* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.rfcomm_pinfo*, %struct.rfcomm_pinfo** %5, align 8
  %38 = getelementptr inbounds %struct.rfcomm_pinfo, %struct.rfcomm_pinfo* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = load %struct.sock*, %struct.sock** %3, align 8
  %41 = call i32 @security_sk_clone(%struct.sock* %39, %struct.sock* %40)
  br label %52

42:                                               ; preds = %2
  %43 = load %struct.rfcomm_pinfo*, %struct.rfcomm_pinfo** %5, align 8
  %44 = getelementptr inbounds %struct.rfcomm_pinfo, %struct.rfcomm_pinfo* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @BT_SECURITY_LOW, align 4
  %48 = load %struct.rfcomm_pinfo*, %struct.rfcomm_pinfo** %5, align 8
  %49 = getelementptr inbounds %struct.rfcomm_pinfo, %struct.rfcomm_pinfo* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.rfcomm_pinfo*, %struct.rfcomm_pinfo** %5, align 8
  %51 = getelementptr inbounds %struct.rfcomm_pinfo, %struct.rfcomm_pinfo* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %42, %12
  %53 = load %struct.rfcomm_pinfo*, %struct.rfcomm_pinfo** %5, align 8
  %54 = getelementptr inbounds %struct.rfcomm_pinfo, %struct.rfcomm_pinfo* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.rfcomm_pinfo*, %struct.rfcomm_pinfo** %5, align 8
  %57 = getelementptr inbounds %struct.rfcomm_pinfo, %struct.rfcomm_pinfo* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32 %55, i32* %59, align 8
  %60 = load %struct.rfcomm_pinfo*, %struct.rfcomm_pinfo** %5, align 8
  %61 = getelementptr inbounds %struct.rfcomm_pinfo, %struct.rfcomm_pinfo* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.rfcomm_pinfo*, %struct.rfcomm_pinfo** %5, align 8
  %64 = getelementptr inbounds %struct.rfcomm_pinfo, %struct.rfcomm_pinfo* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i64 %62, i64* %66, align 8
  ret void
}

declare dso_local %struct.rfcomm_pinfo* @rfcomm_pi(%struct.sock*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.sock*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_4__* @bt_sk(%struct.sock*) #1

declare dso_local i32 @security_sk_clone(%struct.sock*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
