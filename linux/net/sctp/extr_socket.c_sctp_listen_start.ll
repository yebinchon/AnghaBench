; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_listen_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_listen_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sctp_sock = type { i8*, %struct.crypto_shash*, %struct.sctp_endpoint* }
%struct.crypto_shash = type { i32 }
%struct.sctp_endpoint = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"hmac(%s)\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to load transform for %s: %ld\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@SCTP_SS_LISTENING = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SCTP_SS_CLOSED = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32)* @sctp_listen_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_listen_start(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_sock*, align 8
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.crypto_shash*, align 8
  %9 = alloca [32 x i8], align 16
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.sctp_sock* @sctp_sk(%struct.sock* %10)
  store %struct.sctp_sock* %11, %struct.sctp_sock** %6, align 8
  %12 = load %struct.sctp_sock*, %struct.sctp_sock** %6, align 8
  %13 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %12, i32 0, i32 2
  %14 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %13, align 8
  store %struct.sctp_endpoint* %14, %struct.sctp_endpoint** %7, align 8
  store %struct.crypto_shash* null, %struct.crypto_shash** %8, align 8
  %15 = load %struct.sctp_sock*, %struct.sctp_sock** %6, align 8
  %16 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %15, i32 0, i32 1
  %17 = load %struct.crypto_shash*, %struct.crypto_shash** %16, align 8
  %18 = icmp ne %struct.crypto_shash* %17, null
  br i1 %18, label %49, label %19

19:                                               ; preds = %2
  %20 = load %struct.sctp_sock*, %struct.sctp_sock** %6, align 8
  %21 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %49

24:                                               ; preds = %19
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %26 = load %struct.sctp_sock*, %struct.sctp_sock** %6, align 8
  %27 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %31 = call %struct.crypto_shash* @crypto_alloc_shash(i8* %30, i32 0, i32 0)
  store %struct.crypto_shash* %31, %struct.crypto_shash** %8, align 8
  %32 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %33 = call i64 @IS_ERR(%struct.crypto_shash* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %24
  %36 = load %struct.sctp_sock*, %struct.sctp_sock** %6, align 8
  %37 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %40 = call i32 @PTR_ERR(%struct.crypto_shash* %39)
  %41 = call i32 @net_info_ratelimited(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 %40)
  %42 = load i32, i32* @ENOSYS, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %88

44:                                               ; preds = %24
  %45 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %46 = load %struct.sock*, %struct.sock** %4, align 8
  %47 = call %struct.sctp_sock* @sctp_sk(%struct.sock* %46)
  %48 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %47, i32 0, i32 1
  store %struct.crypto_shash* %45, %struct.crypto_shash** %48, align 8
  br label %49

49:                                               ; preds = %44, %19, %2
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = load i32, i32* @SCTP_SS_LISTENING, align 4
  %52 = call i32 @inet_sk_set_state(%struct.sock* %50, i32 %51)
  %53 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %54 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %49
  %60 = load %struct.sock*, %struct.sock** %4, align 8
  %61 = call i64 @sctp_autobind(%struct.sock* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @EAGAIN, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %88

66:                                               ; preds = %59
  br label %82

67:                                               ; preds = %49
  %68 = load %struct.sock*, %struct.sock** %4, align 8
  %69 = load %struct.sock*, %struct.sock** %4, align 8
  %70 = call %struct.TYPE_6__* @inet_sk(%struct.sock* %69)
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @sctp_get_port(%struct.sock* %68, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load %struct.sock*, %struct.sock** %4, align 8
  %77 = load i32, i32* @SCTP_SS_CLOSED, align 4
  %78 = call i32 @inet_sk_set_state(%struct.sock* %76, i32 %77)
  %79 = load i32, i32* @EADDRINUSE, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %88

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81, %66
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.sock*, %struct.sock** %4, align 8
  %85 = getelementptr inbounds %struct.sock, %struct.sock* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %87 = call i32 @sctp_hash_endpoint(%struct.sctp_endpoint* %86)
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %82, %75, %63, %35
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.sctp_sock* @sctp_sk(%struct.sock*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @net_info_ratelimited(i8*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @inet_sk_set_state(%struct.sock*, i32) #1

declare dso_local i64 @sctp_autobind(%struct.sock*) #1

declare dso_local i64 @sctp_get_port(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_6__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @sctp_hash_endpoint(%struct.sctp_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
