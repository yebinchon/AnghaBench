; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_init_buffer_space.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_init_buffer_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SOCK_SNDBUF_LOCK = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@TCP_INIT_CWND = common dso_local global i32 0, align 4
@tcp_jiffies32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_init_buffer_space(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcp_sock*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.TYPE_6__* @sock_net(%struct.sock* %6)
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %11)
  store %struct.tcp_sock* %12, %struct.tcp_sock** %4, align 8
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SOCK_SNDBUF_LOCK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load %struct.sock*, %struct.sock** %2, align 8
  %21 = call i32 @tcp_sndbuf_expand(%struct.sock* %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load i32, i32* @u32, align 4
  %24 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %25 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TCP_INIT_CWND, align 4
  %28 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %29 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  %32 = call i32 @min_t(i32 %23, i32 %26, i32 %31)
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %34 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 4
  %36 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %37 = call i32 @tcp_mstamp_refresh(%struct.tcp_sock* %36)
  %38 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %39 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %42 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %45 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %48 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.sock*, %struct.sock** %2, align 8
  %51 = call i32 @tcp_full_space(%struct.sock* %50)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %53 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %85

57:                                               ; preds = %22
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %60 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %66 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 4, %67
  %69 = icmp sgt i32 %64, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %63
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %3, align 4
  %74 = ashr i32 %72, %73
  %75 = sub nsw i32 %71, %74
  %76 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %77 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 4, %78
  %80 = call i8* @max(i32 %75, i32 %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %83 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %70, %63, %57
  br label %85

85:                                               ; preds = %84, %22
  %86 = load i32, i32* %3, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %121

88:                                               ; preds = %85
  %89 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %90 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %93 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 2, %94
  %96 = icmp sgt i32 %91, %95
  br i1 %96, label %97, label %121

97:                                               ; preds = %88
  %98 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %99 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %102 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %100, %103
  %105 = load i32, i32* %5, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %97
  %108 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %109 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 2, %110
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %114 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %112, %115
  %117 = call i8* @max(i32 %111, i32 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %120 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %107, %97, %88, %85
  %122 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %123 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %126 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @min(i32 %124, i32 %127)
  %129 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %130 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @tcp_jiffies32, align 4
  %132 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %133 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  ret void
}

declare dso_local %struct.TYPE_6__* @sock_net(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_sndbuf_expand(%struct.sock*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @tcp_mstamp_refresh(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_full_space(%struct.sock*) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
