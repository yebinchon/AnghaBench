; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_process_loss.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_process_loss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32, i64, i32, i32 }

@FLAG_SND_UNA_ADVANCED = common dso_local global i32 0, align 4
@FLAG_ORIG_SACK_ACKED = common dso_local global i32 0, align 4
@FLAG_DATA_SACKED = common dso_local global i32 0, align 4
@REXMIT_NEW = common dso_local global i32 0, align 4
@REXMIT_LOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i32, i32*)* @tcp_process_loss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_process_loss(%struct.sock* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.tcp_sock*, align 8
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %11)
  store %struct.tcp_sock* %12, %struct.tcp_sock** %9, align 8
  %13 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %14 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %17 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @before(i32 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @FLAG_SND_UNA_ADVANCED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %4
  %28 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %29 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @rcu_access_pointer(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27, %4
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  %35 = call i64 @tcp_try_undo_loss(%struct.sock* %34, i32 0)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %146

38:                                               ; preds = %33, %27
  %39 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %40 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %107

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @FLAG_ORIG_SACK_ACKED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.sock*, %struct.sock** %5, align 8
  %50 = call i64 @tcp_try_undo_loss(%struct.sock* %49, i32 1)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %146

53:                                               ; preds = %48, %43
  %54 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %55 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %58 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @after(i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %53
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @FLAG_DATA_SACKED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67, %62
  %71 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %72 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %70, %67
  br label %106

74:                                               ; preds = %53
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @FLAG_SND_UNA_ADVANCED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %105

79:                                               ; preds = %74
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %105, label %82

82:                                               ; preds = %79
  %83 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %84 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %87 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.sock*, %struct.sock** %5, align 8
  %89 = call i32 @tcp_write_queue_empty(%struct.sock* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %82
  %92 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %93 = call i32 @tcp_wnd_end(%struct.tcp_sock* %92)
  %94 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %95 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @after(i32 %93, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load i32, i32* @REXMIT_NEW, align 4
  %101 = load i32*, i32** %8, align 8
  store i32 %100, i32* %101, align 4
  br label %146

102:                                              ; preds = %91, %82
  %103 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %104 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %103, i32 0, i32 2
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %102, %79, %74
  br label %106

106:                                              ; preds = %105, %73
  br label %107

107:                                              ; preds = %106, %38
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load %struct.sock*, %struct.sock** %5, align 8
  %112 = call i32 @tcp_try_undo_recovery(%struct.sock* %111)
  br label %146

113:                                              ; preds = %107
  %114 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %115 = call i64 @tcp_is_reno(%struct.tcp_sock* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %143

117:                                              ; preds = %113
  %118 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %119 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %122 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @after(i32 %120, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %117
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load %struct.sock*, %struct.sock** %5, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @tcp_add_reno_sack(%struct.sock* %130, i32 %131)
  br label %142

133:                                              ; preds = %126, %117
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @FLAG_SND_UNA_ADVANCED, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %140 = call i32 @tcp_reset_reno_sack(%struct.tcp_sock* %139)
  br label %141

141:                                              ; preds = %138, %133
  br label %142

142:                                              ; preds = %141, %129
  br label %143

143:                                              ; preds = %142, %113
  %144 = load i32, i32* @REXMIT_LOST, align 4
  %145 = load i32*, i32** %8, align 8
  store i32 %144, i32* %145, align 4
  br label %146

146:                                              ; preds = %143, %110, %99, %52, %37
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @before(i32, i32) #1

declare dso_local i64 @rcu_access_pointer(i32) #1

declare dso_local i64 @tcp_try_undo_loss(%struct.sock*, i32) #1

declare dso_local i64 @after(i32, i32) #1

declare dso_local i32 @tcp_write_queue_empty(%struct.sock*) #1

declare dso_local i32 @tcp_wnd_end(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_try_undo_recovery(%struct.sock*) #1

declare dso_local i64 @tcp_is_reno(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_add_reno_sack(%struct.sock*, i32) #1

declare dso_local i32 @tcp_reset_reno_sack(%struct.tcp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
