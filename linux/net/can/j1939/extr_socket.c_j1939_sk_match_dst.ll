; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sk_match_dst.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sk_match_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_sock = type { i32, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.j1939_sk_buff_cb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64 }

@J1939_SOCK_PROMISC = common dso_local global i32 0, align 4
@SOCK_BROADCAST = common dso_local global i32 0, align 4
@J1939_SOCK_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.j1939_sock*, %struct.j1939_sk_buff_cb*)* @j1939_sk_match_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @j1939_sk_match_dst(%struct.j1939_sock* %0, %struct.j1939_sk_buff_cb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.j1939_sock*, align 8
  %5 = alloca %struct.j1939_sk_buff_cb*, align 8
  store %struct.j1939_sock* %0, %struct.j1939_sock** %4, align 8
  store %struct.j1939_sk_buff_cb* %1, %struct.j1939_sk_buff_cb** %5, align 8
  %6 = load %struct.j1939_sock*, %struct.j1939_sock** %4, align 8
  %7 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @J1939_SOCK_PROMISC, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %126

13:                                               ; preds = %2
  %14 = load %struct.j1939_sock*, %struct.j1939_sock** %4, align 8
  %15 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %21 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load %struct.j1939_sock*, %struct.j1939_sock** %4, align 8
  %27 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %31 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %29, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %126

36:                                               ; preds = %25
  br label %65

37:                                               ; preds = %19, %13
  %38 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %39 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @j1939_address_is_unicast(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = load %struct.j1939_sock*, %struct.j1939_sock** %4, align 8
  %46 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %50 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %48, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %126

55:                                               ; preds = %44
  br label %64

56:                                               ; preds = %37
  %57 = load %struct.j1939_sock*, %struct.j1939_sock** %4, align 8
  %58 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %57, i32 0, i32 3
  %59 = load i32, i32* @SOCK_BROADCAST, align 4
  %60 = call i32 @sock_flag(i32* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %126

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %55
  br label %65

65:                                               ; preds = %64, %36
  %66 = load %struct.j1939_sock*, %struct.j1939_sock** %4, align 8
  %67 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @J1939_SOCK_CONNECTED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %109

72:                                               ; preds = %65
  %73 = load %struct.j1939_sock*, %struct.j1939_sock** %4, align 8
  %74 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %72
  %79 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %80 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %78
  %85 = load %struct.j1939_sock*, %struct.j1939_sock** %4, align 8
  %86 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %90 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %88, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %126

95:                                               ; preds = %84
  br label %108

96:                                               ; preds = %78, %72
  %97 = load %struct.j1939_sock*, %struct.j1939_sock** %4, align 8
  %98 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %102 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %100, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %126

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107, %95
  br label %109

109:                                              ; preds = %108, %65
  %110 = load %struct.j1939_sock*, %struct.j1939_sock** %4, align 8
  %111 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @j1939_pgn_is_valid(i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %109
  %116 = load %struct.j1939_sock*, %struct.j1939_sock** %4, align 8
  %117 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %120 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %118, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %126

125:                                              ; preds = %115, %109
  store i32 1, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %124, %106, %94, %62, %54, %35, %12
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i64 @j1939_address_is_unicast(i64) #1

declare dso_local i32 @sock_flag(i32*, i32) #1

declare dso_local i64 @j1939_pgn_is_valid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
