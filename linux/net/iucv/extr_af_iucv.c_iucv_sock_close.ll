; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_sock_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_iucv_sock_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64, i64, i32 (%struct.sock*)*, i32 }
%struct.iucv_sock = type { i32*, i32, i32, i32 }

@AF_IUCV_TRANS_HIPER = common dso_local global i32 0, align 4
@AF_IUCV_FLAG_FIN = common dso_local global i32 0, align 4
@SOCK_LINGER = common dso_local global i32 0, align 4
@IUCV_DISCONN_TIMEOUT = common dso_local global i64 0, align 8
@IUCV_CLOSED = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @iucv_sock_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iucv_sock_close(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.iucv_sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %6)
  store %struct.iucv_sock* %7, %struct.iucv_sock** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call i32 @lock_sock(%struct.sock* %8)
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %96 [
    i32 128, label %13
    i32 130, label %16
    i32 129, label %34
    i32 131, label %73
  ]

13:                                               ; preds = %1
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = call i32 @iucv_sock_cleanup_listen(%struct.sock* %14)
  br label %99

16:                                               ; preds = %1
  %17 = load %struct.iucv_sock*, %struct.iucv_sock** %3, align 8
  %18 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AF_IUCV_TRANS_HIPER, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  %24 = load i32, i32* @AF_IUCV_FLAG_FIN, align 4
  %25 = call i32 @iucv_send_ctrl(%struct.sock* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  store i32 129, i32* %27, align 8
  %28 = load %struct.sock*, %struct.sock** %2, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 3
  %30 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %29, align 8
  %31 = load %struct.sock*, %struct.sock** %2, align 8
  %32 = call i32 %30(%struct.sock* %31)
  br label %33

33:                                               ; preds = %22, %16
  br label %34

34:                                               ; preds = %1, %33
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  store i32 131, i32* %36, align 8
  %37 = load %struct.sock*, %struct.sock** %2, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 3
  %39 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %38, align 8
  %40 = load %struct.sock*, %struct.sock** %2, align 8
  %41 = call i32 %39(%struct.sock* %40)
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %72, label %44

44:                                               ; preds = %34
  %45 = load %struct.iucv_sock*, %struct.iucv_sock** %3, align 8
  %46 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %45, i32 0, i32 2
  %47 = call i32 @skb_queue_empty(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %72, label %49

49:                                               ; preds = %44
  %50 = load %struct.sock*, %struct.sock** %2, align 8
  %51 = load i32, i32* @SOCK_LINGER, align 4
  %52 = call i32 @sock_flag(%struct.sock* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.sock*, %struct.sock** %2, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.sock*, %struct.sock** %2, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %4, align 8
  br label %65

63:                                               ; preds = %54, %49
  %64 = load i64, i64* @IUCV_DISCONN_TIMEOUT, align 8
  store i64 %64, i64* %4, align 8
  br label %65

65:                                               ; preds = %63, %59
  %66 = load %struct.sock*, %struct.sock** %2, align 8
  %67 = load %struct.sock*, %struct.sock** %2, align 8
  %68 = load i32, i32* @IUCV_CLOSED, align 4
  %69 = call i32 @iucv_sock_in_state(%struct.sock* %67, i32 %68, i32 0)
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @iucv_sock_wait(%struct.sock* %66, i32 %69, i64 %70)
  br label %72

72:                                               ; preds = %65, %44, %34
  br label %73

73:                                               ; preds = %1, %72
  %74 = load i32, i32* @IUCV_CLOSED, align 4
  %75 = load %struct.sock*, %struct.sock** %2, align 8
  %76 = getelementptr inbounds %struct.sock, %struct.sock* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.sock*, %struct.sock** %2, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 3
  %79 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %78, align 8
  %80 = load %struct.sock*, %struct.sock** %2, align 8
  %81 = call i32 %79(%struct.sock* %80)
  %82 = load i32, i32* @ECONNRESET, align 4
  %83 = load %struct.sock*, %struct.sock** %2, align 8
  %84 = getelementptr inbounds %struct.sock, %struct.sock* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load %struct.sock*, %struct.sock** %2, align 8
  %86 = getelementptr inbounds %struct.sock, %struct.sock* %85, i32 0, i32 3
  %87 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %86, align 8
  %88 = load %struct.sock*, %struct.sock** %2, align 8
  %89 = call i32 %87(%struct.sock* %88)
  %90 = load %struct.iucv_sock*, %struct.iucv_sock** %3, align 8
  %91 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %90, i32 0, i32 2
  %92 = call i32 @skb_queue_purge(i32* %91)
  %93 = load %struct.iucv_sock*, %struct.iucv_sock** %3, align 8
  %94 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %93, i32 0, i32 1
  %95 = call i32 @skb_queue_purge(i32* %94)
  br label %96

96:                                               ; preds = %1, %73
  %97 = load %struct.sock*, %struct.sock** %2, align 8
  %98 = call i32 @iucv_sever_path(%struct.sock* %97, i32 1)
  br label %99

99:                                               ; preds = %96, %13
  %100 = load %struct.iucv_sock*, %struct.iucv_sock** %3, align 8
  %101 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load %struct.iucv_sock*, %struct.iucv_sock** %3, align 8
  %106 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @dev_put(i32* %107)
  %109 = load %struct.iucv_sock*, %struct.iucv_sock** %3, align 8
  %110 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %109, i32 0, i32 0
  store i32* null, i32** %110, align 8
  %111 = load %struct.sock*, %struct.sock** %2, align 8
  %112 = getelementptr inbounds %struct.sock, %struct.sock* %111, i32 0, i32 2
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %104, %99
  %114 = load %struct.sock*, %struct.sock** %2, align 8
  %115 = load i32, i32* @SOCK_ZAPPED, align 4
  %116 = call i32 @sock_set_flag(%struct.sock* %114, i32 %115)
  %117 = load %struct.sock*, %struct.sock** %2, align 8
  %118 = call i32 @release_sock(%struct.sock* %117)
  ret void
}

declare dso_local %struct.iucv_sock* @iucv_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @iucv_sock_cleanup_listen(%struct.sock*) #1

declare dso_local i32 @iucv_send_ctrl(%struct.sock*, i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @iucv_sock_wait(%struct.sock*, i32, i64) #1

declare dso_local i32 @iucv_sock_in_state(%struct.sock*, i32, i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @iucv_sever_path(%struct.sock*, i32) #1

declare dso_local i32 @dev_put(i32*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
