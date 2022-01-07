; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_call_accept.c_rxrpc_discard_prealloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_call_accept.c_rxrpc_discard_prealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_sock = type { i32 (%struct.rxrpc_call*, i32)*, i32, %struct.rxrpc_peer*, i32 }
%struct.rxrpc_call = type opaque
%struct.rxrpc_peer = type { i32, i32, i32, i32, i32, i32, %struct.rxrpc_call.0**, i32, i32, %struct.rxrpc_peer**, %struct.rxrpc_peer** }
%struct.rxrpc_call.0 = type { i32, i32 }
%struct.rxrpc_backlog = type { i32, i32, i32, i32, i32, i32, %struct.rxrpc_call.0**, i32, i32, %struct.rxrpc_backlog**, %struct.rxrpc_backlog** }
%struct.rxrpc_net = type { i32, i32 }
%struct.rxrpc_connection = type { i32, i32, i32, i32, i32, i32, %struct.rxrpc_call.0**, i32, i32, %struct.rxrpc_connection**, %struct.rxrpc_connection** }

@RXRPC_BACKLOG_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"discard %lx\00", align 1
@rxrpc_call_put_kernel = common dso_local global i32 0, align 4
@rxrpc_call_put = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxrpc_discard_prealloc(%struct.rxrpc_sock* %0) #0 {
  %2 = alloca %struct.rxrpc_sock*, align 8
  %3 = alloca %struct.rxrpc_backlog*, align 8
  %4 = alloca %struct.rxrpc_net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rxrpc_peer*, align 8
  %9 = alloca %struct.rxrpc_connection*, align 8
  %10 = alloca %struct.rxrpc_call.0*, align 8
  store %struct.rxrpc_sock* %0, %struct.rxrpc_sock** %2, align 8
  %11 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %2, align 8
  %12 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %11, i32 0, i32 2
  %13 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %12, align 8
  %14 = bitcast %struct.rxrpc_peer* %13 to %struct.rxrpc_backlog*
  store %struct.rxrpc_backlog* %14, %struct.rxrpc_backlog** %3, align 8
  %15 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %2, align 8
  %16 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %15, i32 0, i32 3
  %17 = call i32 @sock_net(i32* %16)
  %18 = call %struct.rxrpc_net* @rxrpc_net(i32 %17)
  store %struct.rxrpc_net* %18, %struct.rxrpc_net** %4, align 8
  %19 = load i32, i32* @RXRPC_BACKLOG_MAX, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.rxrpc_backlog*, %struct.rxrpc_backlog** %3, align 8
  %21 = icmp ne %struct.rxrpc_backlog* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %176

23:                                               ; preds = %1
  %24 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %2, align 8
  %25 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %24, i32 0, i32 2
  store %struct.rxrpc_peer* null, %struct.rxrpc_peer** %25, align 8
  %26 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %2, align 8
  %27 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %26, i32 0, i32 1
  %28 = call i32 @spin_lock_bh(i32* %27)
  %29 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %2, align 8
  %30 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock_bh(i32* %30)
  %32 = load %struct.rxrpc_backlog*, %struct.rxrpc_backlog** %3, align 8
  %33 = getelementptr inbounds %struct.rxrpc_backlog, %struct.rxrpc_backlog* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %6, align 4
  %35 = load %struct.rxrpc_backlog*, %struct.rxrpc_backlog** %3, align 8
  %36 = getelementptr inbounds %struct.rxrpc_backlog, %struct.rxrpc_backlog* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %44, %23
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @CIRC_CNT(i32 %39, i32 %40, i32 %41)
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %38
  %45 = load %struct.rxrpc_backlog*, %struct.rxrpc_backlog** %3, align 8
  %46 = getelementptr inbounds %struct.rxrpc_backlog, %struct.rxrpc_backlog* %45, i32 0, i32 10
  %47 = load %struct.rxrpc_backlog**, %struct.rxrpc_backlog*** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.rxrpc_backlog*, %struct.rxrpc_backlog** %47, i64 %49
  %51 = load %struct.rxrpc_backlog*, %struct.rxrpc_backlog** %50, align 8
  %52 = bitcast %struct.rxrpc_backlog* %51 to %struct.rxrpc_peer*
  store %struct.rxrpc_peer* %52, %struct.rxrpc_peer** %8, align 8
  %53 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %8, align 8
  %54 = call i32 @kfree(%struct.rxrpc_peer* %53)
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 1
  %57 = load i32, i32* %5, align 4
  %58 = sub i32 %57, 1
  %59 = and i32 %56, %58
  store i32 %59, i32* %7, align 4
  br label %38

60:                                               ; preds = %38
  %61 = load %struct.rxrpc_backlog*, %struct.rxrpc_backlog** %3, align 8
  %62 = getelementptr inbounds %struct.rxrpc_backlog, %struct.rxrpc_backlog* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %6, align 4
  %64 = load %struct.rxrpc_backlog*, %struct.rxrpc_backlog** %3, align 8
  %65 = getelementptr inbounds %struct.rxrpc_backlog, %struct.rxrpc_backlog* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %105, %60
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @CIRC_CNT(i32 %68, i32 %69, i32 %70)
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %111

73:                                               ; preds = %67
  %74 = load %struct.rxrpc_backlog*, %struct.rxrpc_backlog** %3, align 8
  %75 = getelementptr inbounds %struct.rxrpc_backlog, %struct.rxrpc_backlog* %74, i32 0, i32 9
  %76 = load %struct.rxrpc_backlog**, %struct.rxrpc_backlog*** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.rxrpc_backlog*, %struct.rxrpc_backlog** %76, i64 %78
  %80 = load %struct.rxrpc_backlog*, %struct.rxrpc_backlog** %79, align 8
  %81 = bitcast %struct.rxrpc_backlog* %80 to %struct.rxrpc_connection*
  store %struct.rxrpc_connection* %81, %struct.rxrpc_connection** %9, align 8
  %82 = load %struct.rxrpc_net*, %struct.rxrpc_net** %4, align 8
  %83 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %82, i32 0, i32 1
  %84 = call i32 @write_lock(i32* %83)
  %85 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %9, align 8
  %86 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %85, i32 0, i32 8
  %87 = call i32 @list_del(i32* %86)
  %88 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %9, align 8
  %89 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %88, i32 0, i32 7
  %90 = call i32 @list_del(i32* %89)
  %91 = load %struct.rxrpc_net*, %struct.rxrpc_net** %4, align 8
  %92 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %91, i32 0, i32 1
  %93 = call i32 @write_unlock(i32* %92)
  %94 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %9, align 8
  %95 = bitcast %struct.rxrpc_connection* %94 to %struct.rxrpc_peer*
  %96 = call i32 @kfree(%struct.rxrpc_peer* %95)
  %97 = load %struct.rxrpc_net*, %struct.rxrpc_net** %4, align 8
  %98 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %97, i32 0, i32 0
  %99 = call i64 @atomic_dec_and_test(i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %73
  %102 = load %struct.rxrpc_net*, %struct.rxrpc_net** %4, align 8
  %103 = getelementptr inbounds %struct.rxrpc_net, %struct.rxrpc_net* %102, i32 0, i32 0
  %104 = call i32 @wake_up_var(i32* %103)
  br label %105

105:                                              ; preds = %101, %73
  %106 = load i32, i32* %7, align 4
  %107 = add i32 %106, 1
  %108 = load i32, i32* %5, align 4
  %109 = sub i32 %108, 1
  %110 = and i32 %107, %109
  store i32 %110, i32* %7, align 4
  br label %67

111:                                              ; preds = %67
  %112 = load %struct.rxrpc_backlog*, %struct.rxrpc_backlog** %3, align 8
  %113 = getelementptr inbounds %struct.rxrpc_backlog, %struct.rxrpc_backlog* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %6, align 4
  %115 = load %struct.rxrpc_backlog*, %struct.rxrpc_backlog** %3, align 8
  %116 = getelementptr inbounds %struct.rxrpc_backlog, %struct.rxrpc_backlog* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %158, %111
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i64 @CIRC_CNT(i32 %119, i32 %120, i32 %121)
  %123 = icmp sgt i64 %122, 0
  br i1 %123, label %124, label %172

124:                                              ; preds = %118
  %125 = load %struct.rxrpc_backlog*, %struct.rxrpc_backlog** %3, align 8
  %126 = getelementptr inbounds %struct.rxrpc_backlog, %struct.rxrpc_backlog* %125, i32 0, i32 6
  %127 = load %struct.rxrpc_call.0**, %struct.rxrpc_call.0*** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.rxrpc_call.0*, %struct.rxrpc_call.0** %127, i64 %129
  %131 = load %struct.rxrpc_call.0*, %struct.rxrpc_call.0** %130, align 8
  store %struct.rxrpc_call.0* %131, %struct.rxrpc_call.0** %10, align 8
  %132 = load %struct.rxrpc_call.0*, %struct.rxrpc_call.0** %10, align 8
  %133 = getelementptr inbounds %struct.rxrpc_call.0, %struct.rxrpc_call.0* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %2, align 8
  %136 = call i32 @rcu_assign_pointer(i32 %134, %struct.rxrpc_sock* %135)
  %137 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %2, align 8
  %138 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %137, i32 0, i32 0
  %139 = load i32 (%struct.rxrpc_call*, i32)*, i32 (%struct.rxrpc_call*, i32)** %138, align 8
  %140 = icmp ne i32 (%struct.rxrpc_call*, i32)* %139, null
  br i1 %140, label %141, label %158

141:                                              ; preds = %124
  %142 = load %struct.rxrpc_call.0*, %struct.rxrpc_call.0** %10, align 8
  %143 = getelementptr inbounds %struct.rxrpc_call.0, %struct.rxrpc_call.0* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %144)
  %146 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %2, align 8
  %147 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %146, i32 0, i32 0
  %148 = load i32 (%struct.rxrpc_call*, i32)*, i32 (%struct.rxrpc_call*, i32)** %147, align 8
  %149 = load %struct.rxrpc_call.0*, %struct.rxrpc_call.0** %10, align 8
  %150 = bitcast %struct.rxrpc_call.0* %149 to %struct.rxrpc_call*
  %151 = load %struct.rxrpc_call.0*, %struct.rxrpc_call.0** %10, align 8
  %152 = getelementptr inbounds %struct.rxrpc_call.0, %struct.rxrpc_call.0* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 %148(%struct.rxrpc_call* %150, i32 %153)
  %155 = load %struct.rxrpc_call.0*, %struct.rxrpc_call.0** %10, align 8
  %156 = load i32, i32* @rxrpc_call_put_kernel, align 4
  %157 = call i32 @rxrpc_put_call(%struct.rxrpc_call.0* %155, i32 %156)
  br label %158

158:                                              ; preds = %141, %124
  %159 = load %struct.rxrpc_call.0*, %struct.rxrpc_call.0** %10, align 8
  %160 = call i32 @rxrpc_call_completed(%struct.rxrpc_call.0* %159)
  %161 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %2, align 8
  %162 = load %struct.rxrpc_call.0*, %struct.rxrpc_call.0** %10, align 8
  %163 = call i32 @rxrpc_release_call(%struct.rxrpc_sock* %161, %struct.rxrpc_call.0* %162)
  %164 = load %struct.rxrpc_call.0*, %struct.rxrpc_call.0** %10, align 8
  %165 = load i32, i32* @rxrpc_call_put, align 4
  %166 = call i32 @rxrpc_put_call(%struct.rxrpc_call.0* %164, i32 %165)
  %167 = load i32, i32* %7, align 4
  %168 = add i32 %167, 1
  %169 = load i32, i32* %5, align 4
  %170 = sub i32 %169, 1
  %171 = and i32 %168, %170
  store i32 %171, i32* %7, align 4
  br label %118

172:                                              ; preds = %118
  %173 = load %struct.rxrpc_backlog*, %struct.rxrpc_backlog** %3, align 8
  %174 = bitcast %struct.rxrpc_backlog* %173 to %struct.rxrpc_peer*
  %175 = call i32 @kfree(%struct.rxrpc_peer* %174)
  br label %176

176:                                              ; preds = %172, %22
  ret void
}

declare dso_local %struct.rxrpc_net* @rxrpc_net(i32) #1

declare dso_local i32 @sock_net(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @CIRC_CNT(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.rxrpc_peer*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up_var(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.rxrpc_sock*) #1

declare dso_local i32 @_debug(i8*, i32) #1

declare dso_local i32 @rxrpc_put_call(%struct.rxrpc_call.0*, i32) #1

declare dso_local i32 @rxrpc_call_completed(%struct.rxrpc_call.0*) #1

declare dso_local i32 @rxrpc_release_call(%struct.rxrpc_sock*, %struct.rxrpc_call.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
