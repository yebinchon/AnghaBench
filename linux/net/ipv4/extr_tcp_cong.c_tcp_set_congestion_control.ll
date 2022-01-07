; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cong.c_tcp_set_congestion_control.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cong.c_tcp_set_congestion_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_connection_sock = type { i32, %struct.tcp_congestion_ops*, i64 }
%struct.tcp_congestion_ops = type { i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TCP_CONG_NON_RESTRICTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_set_congestion_control(%struct.sock* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.inet_connection_sock*, align 8
  %13 = alloca %struct.tcp_congestion_ops*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.tcp_congestion_ops*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.sock*, %struct.sock** %7, align 8
  %17 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %16)
  store %struct.inet_connection_sock* %17, %struct.inet_connection_sock** %12, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %12, align 8
  %19 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EPERM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %117

25:                                               ; preds = %5
  %26 = call i32 (...) @rcu_read_lock()
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = call %struct.tcp_congestion_ops* @tcp_ca_find(i8* %30)
  store %struct.tcp_congestion_ops* %31, %struct.tcp_congestion_ops** %13, align 8
  br label %37

32:                                               ; preds = %25
  %33 = load %struct.sock*, %struct.sock** %7, align 8
  %34 = call i32 @sock_net(%struct.sock* %33)
  %35 = load i8*, i8** %8, align 8
  %36 = call %struct.tcp_congestion_ops* @tcp_ca_find_autoload(i32 %34, i8* %35)
  store %struct.tcp_congestion_ops* %36, %struct.tcp_congestion_ops** %13, align 8
  br label %37

37:                                               ; preds = %32, %29
  %38 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %13, align 8
  %39 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %12, align 8
  %40 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %39, i32 0, i32 1
  %41 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %40, align 8
  %42 = icmp eq %struct.tcp_congestion_ops* %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %12, align 8
  %45 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %114

46:                                               ; preds = %37
  %47 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %13, align 8
  %48 = icmp ne %struct.tcp_congestion_ops* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %14, align 4
  br label %113

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %84, label %55

55:                                               ; preds = %52
  %56 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %12, align 8
  %57 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %56, i32 0, i32 1
  %58 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %57, align 8
  store %struct.tcp_congestion_ops* %58, %struct.tcp_congestion_ops** %15, align 8
  %59 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %13, align 8
  %60 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @try_module_get(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %55
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.sock*, %struct.sock** %7, align 8
  %69 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %13, align 8
  %70 = call i32 @tcp_reinit_congestion_control(%struct.sock* %68, %struct.tcp_congestion_ops* %69)
  br label %79

71:                                               ; preds = %64
  %72 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %13, align 8
  %73 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %12, align 8
  %74 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %73, i32 0, i32 1
  store %struct.tcp_congestion_ops* %72, %struct.tcp_congestion_ops** %74, align 8
  %75 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %15, align 8
  %76 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @module_put(i32 %77)
  br label %79

79:                                               ; preds = %71, %67
  br label %83

80:                                               ; preds = %55
  %81 = load i32, i32* @EBUSY, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %80, %79
  br label %112

84:                                               ; preds = %52
  %85 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %13, align 8
  %86 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @TCP_CONG_NON_RESTRICTED, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %84
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @EPERM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %14, align 4
  br label %111

97:                                               ; preds = %91, %84
  %98 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %13, align 8
  %99 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @try_module_get(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %97
  %104 = load i32, i32* @EBUSY, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %14, align 4
  br label %110

106:                                              ; preds = %97
  %107 = load %struct.sock*, %struct.sock** %7, align 8
  %108 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %13, align 8
  %109 = call i32 @tcp_reinit_congestion_control(%struct.sock* %107, %struct.tcp_congestion_ops* %108)
  br label %110

110:                                              ; preds = %106, %103
  br label %111

111:                                              ; preds = %110, %94
  br label %112

112:                                              ; preds = %111, %83
  br label %113

113:                                              ; preds = %112, %49
  br label %114

114:                                              ; preds = %113, %43
  %115 = call i32 (...) @rcu_read_unlock()
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %114, %22
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tcp_congestion_ops* @tcp_ca_find(i8*) #1

declare dso_local %struct.tcp_congestion_ops* @tcp_ca_find_autoload(i32, i8*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i64 @try_module_get(i32) #1

declare dso_local i32 @tcp_reinit_congestion_control(%struct.sock*, %struct.tcp_congestion_ops*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
