; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_endpointola.c_sctp_endpoint_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_endpointola.c_sctp_endpoint_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { %struct.TYPE_3__, i32, i32, %struct.sctp_endpoint* }
%struct.TYPE_3__ = type { %struct.sock*, i32, i32, i32 }
%struct.sock = type { i32 }
%struct.TYPE_4__ = type { i32*, i64 }

@.str = private unnamed_addr constant [40 x i8] c"Attempt to destroy undead endpoint %p!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_endpoint*)* @sctp_endpoint_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_endpoint_destroy(%struct.sctp_endpoint* %0) #0 {
  %2 = alloca %struct.sctp_endpoint*, align 8
  %3 = alloca %struct.sock*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %2, align 8
  %4 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %2, align 8
  %5 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %2, align 8
  %15 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.sctp_endpoint* %14)
  br label %60

16:                                               ; preds = %1
  %17 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %2, align 8
  %18 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %17, i32 0, i32 3
  %19 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %18, align 8
  %20 = call i32 @kfree(%struct.sctp_endpoint* %19)
  %21 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %2, align 8
  %22 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %21, i32 0, i32 2
  %23 = call i32 @sctp_auth_destroy_keys(i32* %22)
  %24 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %2, align 8
  %25 = call i32 @sctp_auth_free(%struct.sctp_endpoint* %24)
  %26 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %2, align 8
  %27 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = call i32 @sctp_inq_free(i32* %28)
  %30 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %2, align 8
  %31 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = call i32 @sctp_bind_addr_free(i32* %32)
  %34 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %2, align 8
  %35 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @memset(i32 %36, i32 0, i32 4)
  %38 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %2, align 8
  %39 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.sock*, %struct.sock** %40, align 8
  store %struct.sock* %41, %struct.sock** %3, align 8
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = call %struct.TYPE_4__* @sctp_sk(%struct.sock* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %16
  %48 = load %struct.sock*, %struct.sock** %3, align 8
  %49 = call i32 @sctp_put_port(%struct.sock* %48)
  br label %50

50:                                               ; preds = %47, %16
  %51 = load %struct.sock*, %struct.sock** %3, align 8
  %52 = call %struct.TYPE_4__* @sctp_sk(%struct.sock* %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  %54 = load %struct.sock*, %struct.sock** %3, align 8
  %55 = call i32 @sock_put(%struct.sock* %54)
  %56 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %2, align 8
  %57 = call i32 @kfree(%struct.sctp_endpoint* %56)
  %58 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %2, align 8
  %59 = call i32 @SCTP_DBG_OBJCNT_DEC(%struct.sctp_endpoint* %58)
  br label %60

60:                                               ; preds = %50, %13
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN(i32, i8*, %struct.sctp_endpoint*) #1

declare dso_local i32 @kfree(%struct.sctp_endpoint*) #1

declare dso_local i32 @sctp_auth_destroy_keys(i32*) #1

declare dso_local i32 @sctp_auth_free(%struct.sctp_endpoint*) #1

declare dso_local i32 @sctp_inq_free(i32*) #1

declare dso_local i32 @sctp_bind_addr_free(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @sctp_sk(%struct.sock*) #1

declare dso_local i32 @sctp_put_port(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @SCTP_DBG_OBJCNT_DEC(%struct.sctp_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
