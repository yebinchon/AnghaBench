; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_setup_cork.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_setup_cork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_cork = type { i64, i32, i32, i32, i32, i32, i64, %struct.TYPE_8__*, i32, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ipcm_cookie = type { %struct.TYPE_6__, i32, i32, i32, i32, i32, %struct.ip_options_rcu* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ip_options_rcu = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.rtable = type { %struct.TYPE_8__ }

@EFAULT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@IPCORK_OPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.inet_cork*, %struct.ipcm_cookie*, %struct.rtable**)* @ip_setup_cork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_setup_cork(%struct.sock* %0, %struct.inet_cork* %1, %struct.ipcm_cookie* %2, %struct.rtable** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.inet_cork*, align 8
  %8 = alloca %struct.ipcm_cookie*, align 8
  %9 = alloca %struct.rtable**, align 8
  %10 = alloca %struct.ip_options_rcu*, align 8
  %11 = alloca %struct.rtable*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.inet_cork* %1, %struct.inet_cork** %7, align 8
  store %struct.ipcm_cookie* %2, %struct.ipcm_cookie** %8, align 8
  store %struct.rtable** %3, %struct.rtable*** %9, align 8
  %12 = load %struct.rtable**, %struct.rtable*** %9, align 8
  %13 = load %struct.rtable*, %struct.rtable** %12, align 8
  store %struct.rtable* %13, %struct.rtable** %11, align 8
  %14 = load %struct.rtable*, %struct.rtable** %11, align 8
  %15 = icmp ne %struct.rtable* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EFAULT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %143

23:                                               ; preds = %4
  %24 = load %struct.ipcm_cookie*, %struct.ipcm_cookie** %8, align 8
  %25 = getelementptr inbounds %struct.ipcm_cookie, %struct.ipcm_cookie* %24, i32 0, i32 6
  %26 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %25, align 8
  store %struct.ip_options_rcu* %26, %struct.ip_options_rcu** %10, align 8
  %27 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %10, align 8
  %28 = icmp ne %struct.ip_options_rcu* %27, null
  br i1 %28, label %29, label %75

29:                                               ; preds = %23
  %30 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %31 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %30, i32 0, i32 12
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %29
  %35 = load %struct.sock*, %struct.sock** %6, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @kmalloc(i32 44, i32 %37)
  %39 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %40 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %39, i32 0, i32 12
  store i64 %38, i64* %40, align 8
  %41 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %42 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %41, i32 0, i32 12
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = load i32, i32* @ENOBUFS, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %143

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %52, %29
  %54 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %55 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %54, i32 0, i32 12
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %10, align 8
  %58 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %57, i32 0, i32 0
  %59 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %10, align 8
  %60 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 4, %62
  %64 = call i32 @memcpy(i64 %56, %struct.TYPE_7__* %58, i64 %63)
  %65 = load i32, i32* @IPCORK_OPT, align 4
  %66 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %67 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %66, i32 0, i32 11
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.ipcm_cookie*, %struct.ipcm_cookie** %8, align 8
  %71 = getelementptr inbounds %struct.ipcm_cookie, %struct.ipcm_cookie* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %74 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %73, i32 0, i32 10
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %53, %23
  %76 = load %struct.rtable**, %struct.rtable*** %9, align 8
  store %struct.rtable* null, %struct.rtable** %76, align 8
  %77 = load %struct.sock*, %struct.sock** %6, align 8
  %78 = call i64 @ip_sk_use_pmtu(%struct.sock* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.rtable*, %struct.rtable** %11, align 8
  %82 = getelementptr inbounds %struct.rtable, %struct.rtable* %81, i32 0, i32 0
  %83 = call i32 @dst_mtu(%struct.TYPE_8__* %82)
  br label %91

84:                                               ; preds = %75
  %85 = load %struct.rtable*, %struct.rtable** %11, align 8
  %86 = getelementptr inbounds %struct.rtable, %struct.rtable* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  br label %91

91:                                               ; preds = %84, %80
  %92 = phi i32 [ %83, %80 ], [ %90, %84 ]
  %93 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %94 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %93, i32 0, i32 9
  store i32 %92, i32* %94, align 4
  %95 = load %struct.ipcm_cookie*, %struct.ipcm_cookie** %8, align 8
  %96 = getelementptr inbounds %struct.ipcm_cookie, %struct.ipcm_cookie* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %99 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %98, i32 0, i32 8
  store i32 %97, i32* %99, align 8
  %100 = load %struct.rtable*, %struct.rtable** %11, align 8
  %101 = getelementptr inbounds %struct.rtable, %struct.rtable* %100, i32 0, i32 0
  %102 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %103 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %102, i32 0, i32 7
  store %struct.TYPE_8__* %101, %struct.TYPE_8__** %103, align 8
  %104 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %105 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %104, i32 0, i32 6
  store i64 0, i64* %105, align 8
  %106 = load %struct.ipcm_cookie*, %struct.ipcm_cookie** %8, align 8
  %107 = getelementptr inbounds %struct.ipcm_cookie, %struct.ipcm_cookie* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %110 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 8
  %111 = load %struct.ipcm_cookie*, %struct.ipcm_cookie** %8, align 8
  %112 = getelementptr inbounds %struct.ipcm_cookie, %struct.ipcm_cookie* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %115 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = load %struct.ipcm_cookie*, %struct.ipcm_cookie** %8, align 8
  %117 = getelementptr inbounds %struct.ipcm_cookie, %struct.ipcm_cookie* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %121 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  %122 = load %struct.ipcm_cookie*, %struct.ipcm_cookie** %8, align 8
  %123 = getelementptr inbounds %struct.ipcm_cookie, %struct.ipcm_cookie* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %126 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  %127 = load %struct.ipcm_cookie*, %struct.ipcm_cookie** %8, align 8
  %128 = getelementptr inbounds %struct.ipcm_cookie, %struct.ipcm_cookie* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %132 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 8
  %133 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %134 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %133, i32 0, i32 0
  store i64 0, i64* %134, align 8
  %135 = load %struct.sock*, %struct.sock** %6, align 8
  %136 = load %struct.ipcm_cookie*, %struct.ipcm_cookie** %8, align 8
  %137 = getelementptr inbounds %struct.ipcm_cookie, %struct.ipcm_cookie* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.inet_cork*, %struct.inet_cork** %7, align 8
  %141 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %140, i32 0, i32 0
  %142 = call i32 @sock_tx_timestamp(%struct.sock* %135, i32 %139, i64* %141)
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %91, %49, %20
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64, %struct.TYPE_7__*, i64) #1

declare dso_local i64 @ip_sk_use_pmtu(%struct.sock*) #1

declare dso_local i32 @dst_mtu(%struct.TYPE_8__*) #1

declare dso_local i32 @sock_tx_timestamp(%struct.sock*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
