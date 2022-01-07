; ModuleID = '/home/carl/AnghaBench/linux/net/appletalk/extr_ddp.c_atalk_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/appletalk/extr_ddp.c_atalk_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_at = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.atalk_sock = type { i64, i64, i32 }
%struct.atalk_addr = type { i64, i32 }

@SOCK_ZAPPED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_APPLETALK = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ATADDR_ANYNET = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ATADDR_ANYPORT = common dso_local global i64 0, align 8
@EADDRINUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @atalk_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atalk_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_at*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.atalk_sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.atalk_addr*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %14 = bitcast %struct.sockaddr* %13 to %struct.sockaddr_at*
  store %struct.sockaddr_at* %14, %struct.sockaddr_at** %8, align 8
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %9, align 8
  %18 = load %struct.sock*, %struct.sock** %9, align 8
  %19 = call %struct.atalk_sock* @at_sk(%struct.sock* %18)
  store %struct.atalk_sock* %19, %struct.atalk_sock** %10, align 8
  %20 = load %struct.sock*, %struct.sock** %9, align 8
  %21 = load i32, i32* @SOCK_ZAPPED, align 4
  %22 = call i32 @sock_flag(%struct.sock* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 32
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %137

31:                                               ; preds = %24
  %32 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %33 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AF_APPLETALK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EAFNOSUPPORT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %137

40:                                               ; preds = %31
  %41 = load %struct.sock*, %struct.sock** %9, align 8
  %42 = call i32 @lock_sock(%struct.sock* %41)
  %43 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %44 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @ATADDR_ANYNET, align 4
  %48 = call i64 @htons(i32 %47)
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %40
  %51 = call %struct.atalk_addr* (...) @atalk_find_primary()
  store %struct.atalk_addr* %51, %struct.atalk_addr** %12, align 8
  %52 = load i32, i32* @EADDRNOTAVAIL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %11, align 4
  %54 = load %struct.atalk_addr*, %struct.atalk_addr** %12, align 8
  %55 = icmp ne %struct.atalk_addr* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %133

57:                                               ; preds = %50
  %58 = load %struct.atalk_addr*, %struct.atalk_addr** %12, align 8
  %59 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %62 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  %64 = load %struct.atalk_sock*, %struct.atalk_sock** %10, align 8
  %65 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %64, i32 0, i32 0
  store i64 %60, i64* %65, align 8
  %66 = load %struct.atalk_addr*, %struct.atalk_addr** %12, align 8
  %67 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %70 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 8
  %72 = load %struct.atalk_sock*, %struct.atalk_sock** %10, align 8
  %73 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %72, i32 0, i32 2
  store i32 %68, i32* %73, align 8
  br label %101

74:                                               ; preds = %40
  %75 = load i32, i32* @EADDRNOTAVAIL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %11, align 4
  %77 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %78 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %82 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @atalk_find_interface(i64 %80, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %74
  br label %133

88:                                               ; preds = %74
  %89 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %90 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.atalk_sock*, %struct.atalk_sock** %10, align 8
  %94 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %96 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.atalk_sock*, %struct.atalk_sock** %10, align 8
  %100 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %88, %57
  %102 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %103 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @ATADDR_ANYPORT, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = load %struct.sock*, %struct.sock** %9, align 8
  %109 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %110 = call i32 @atalk_pick_and_bind_port(%struct.sock* %108, %struct.sockaddr_at* %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %133

114:                                              ; preds = %107
  br label %129

115:                                              ; preds = %101
  %116 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %117 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.atalk_sock*, %struct.atalk_sock** %10, align 8
  %120 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  %121 = load i32, i32* @EADDRINUSE, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %11, align 4
  %123 = load %struct.sock*, %struct.sock** %9, align 8
  %124 = load %struct.sockaddr_at*, %struct.sockaddr_at** %8, align 8
  %125 = call i64 @atalk_find_or_insert_socket(%struct.sock* %123, %struct.sockaddr_at* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %115
  br label %133

128:                                              ; preds = %115
  br label %129

129:                                              ; preds = %128, %114
  %130 = load %struct.sock*, %struct.sock** %9, align 8
  %131 = load i32, i32* @SOCK_ZAPPED, align 4
  %132 = call i32 @sock_reset_flag(%struct.sock* %130, i32 %131)
  store i32 0, i32* %11, align 4
  br label %133

133:                                              ; preds = %129, %127, %113, %87, %56
  %134 = load %struct.sock*, %struct.sock** %9, align 8
  %135 = call i32 @release_sock(%struct.sock* %134)
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %133, %37, %28
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.atalk_sock* @at_sk(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.atalk_addr* @atalk_find_primary(...) #1

declare dso_local i32 @atalk_find_interface(i64, i32) #1

declare dso_local i32 @atalk_pick_and_bind_port(%struct.sock*, %struct.sockaddr_at*) #1

declare dso_local i64 @atalk_find_or_insert_socket(%struct.sock*, %struct.sockaddr_at*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
