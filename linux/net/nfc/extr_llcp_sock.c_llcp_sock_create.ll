; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_sock.c_llcp_sock_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_sock.c_llcp_sock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32* }
%struct.nfc_protocol = type { i32 }
%struct.sock = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@SOCK_STREAM = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@SOCK_RAW = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@CAP_NET_RAW = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llcp_rawsock_ops = common dso_local global i32 0, align 4
@llcp_sock_ops = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, %struct.nfc_protocol*, i32)* @llcp_sock_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llcp_sock_create(%struct.net* %0, %struct.socket* %1, %struct.nfc_protocol* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.nfc_protocol*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.nfc_protocol* %2, %struct.nfc_protocol** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.socket*, %struct.socket** %7, align 8
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.socket* %11)
  %13 = load %struct.socket*, %struct.socket** %7, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SOCK_STREAM, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %4
  %19 = load %struct.socket*, %struct.socket** %7, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SOCK_DGRAM, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.socket*, %struct.socket** %7, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SOCK_RAW, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %66

33:                                               ; preds = %24, %18, %4
  %34 = load %struct.socket*, %struct.socket** %7, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SOCK_RAW, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load i32, i32* @CAP_NET_RAW, align 4
  %41 = call i32 @capable(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @EPERM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %66

46:                                               ; preds = %39
  %47 = load %struct.socket*, %struct.socket** %7, align 8
  %48 = getelementptr inbounds %struct.socket, %struct.socket* %47, i32 0, i32 1
  store i32* @llcp_rawsock_ops, i32** %48, align 8
  br label %52

49:                                               ; preds = %33
  %50 = load %struct.socket*, %struct.socket** %7, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 1
  store i32* @llcp_sock_ops, i32** %51, align 8
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.socket*, %struct.socket** %7, align 8
  %54 = load %struct.socket*, %struct.socket** %7, align 8
  %55 = getelementptr inbounds %struct.socket, %struct.socket* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @GFP_ATOMIC, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call %struct.sock* @nfc_llcp_sock_alloc(%struct.socket* %53, i64 %56, i32 %57, i32 %58)
  store %struct.sock* %59, %struct.sock** %10, align 8
  %60 = load %struct.sock*, %struct.sock** %10, align 8
  %61 = icmp eq %struct.sock* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %66

65:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %62, %43, %30
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @pr_debug(i8*, %struct.socket*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.sock* @nfc_llcp_sock_alloc(%struct.socket*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
