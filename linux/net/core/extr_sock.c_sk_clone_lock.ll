; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock.c_sk_clone_lock.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock.c_sk_clone_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32*, i32, i64, i64, i64, i32*, i32, i32, i32, %struct.TYPE_3__, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i64, i32*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.sk_filter = type { i32 }

@SOCK_BINDPORT_LOCK = common dso_local global i32 0, align 4
@SOCK_DONE = common dso_local global i32 0, align 4
@SK_FLAGS_TIMESTAMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @sk_clone_lock(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_filter*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %6, align 4
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 26
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.sock* @sk_prot_alloc(%struct.TYPE_4__* %10, i32 %11, i32 %14)
  store %struct.sock* %15, %struct.sock** %5, align 8
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = icmp ne %struct.sock* %16, null
  br i1 %17, label %18, label %204

18:                                               ; preds = %2
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = call i32 @sock_copy(%struct.sock* %19, %struct.sock* %20)
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load %struct.sock*, %struct.sock** %5, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 25
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %26, align 8
  %27 = load %struct.sock*, %struct.sock** %5, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @likely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %18
  %33 = load %struct.sock*, %struct.sock** %5, align 8
  %34 = call i32 @sock_net(%struct.sock* %33)
  %35 = call i32 @get_net(i32 %34)
  br label %36

36:                                               ; preds = %32, %18
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 24
  %39 = call i32 @sk_node_init(i32* %38)
  %40 = load %struct.sock*, %struct.sock** %5, align 8
  %41 = call i32 @sock_lock_init(%struct.sock* %40)
  %42 = load %struct.sock*, %struct.sock** %5, align 8
  %43 = call i32 @bh_lock_sock(%struct.sock* %42)
  %44 = load %struct.sock*, %struct.sock** %5, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 23
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load %struct.sock*, %struct.sock** %5, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 23
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i32 0, i32* %49, align 8
  %50 = load %struct.sock*, %struct.sock** %5, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 23
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.sock*, %struct.sock** %5, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 22
  %55 = call i32 @atomic_set(i32* %54, i32 0)
  %56 = load %struct.sock*, %struct.sock** %5, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 21
  %58 = call i32 @refcount_set(i32* %57, i32 1)
  %59 = load %struct.sock*, %struct.sock** %5, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 20
  %61 = call i32 @atomic_set(i32* %60, i32 0)
  %62 = load %struct.sock*, %struct.sock** %5, align 8
  %63 = call i32 @sk_init_common(%struct.sock* %62)
  %64 = load %struct.sock*, %struct.sock** %5, align 8
  %65 = getelementptr inbounds %struct.sock, %struct.sock* %64, i32 0, i32 19
  store i32* null, i32** %65, align 8
  %66 = load %struct.sock*, %struct.sock** %5, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 18
  store i64 0, i64* %67, align 8
  %68 = load %struct.sock*, %struct.sock** %5, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 17
  store i64 0, i64* %69, align 8
  %70 = load %struct.sock*, %struct.sock** %5, align 8
  %71 = getelementptr inbounds %struct.sock, %struct.sock* %70, i32 0, i32 16
  store i64 0, i64* %71, align 8
  %72 = load %struct.sock*, %struct.sock** %5, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 15
  %74 = call i32 @atomic_set(i32* %73, i32 0)
  %75 = load %struct.sock*, %struct.sock** %5, align 8
  %76 = getelementptr inbounds %struct.sock, %struct.sock* %75, i32 0, i32 14
  store i32* null, i32** %76, align 8
  %77 = load %struct.sock*, %struct.sock** %3, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @SOCK_BINDPORT_LOCK, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  %83 = load %struct.sock*, %struct.sock** %5, align 8
  %84 = getelementptr inbounds %struct.sock, %struct.sock* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.sock*, %struct.sock** %5, align 8
  %86 = getelementptr inbounds %struct.sock, %struct.sock* %85, i32 0, i32 13
  %87 = call i32 @atomic_set(i32* %86, i32 0)
  %88 = load %struct.sock*, %struct.sock** %5, align 8
  %89 = load i32, i32* @SOCK_DONE, align 4
  %90 = call i32 @sock_reset_flag(%struct.sock* %88, i32 %89)
  %91 = load %struct.sock*, %struct.sock** %5, align 8
  %92 = call i32 @mem_cgroup_sk_alloc(%struct.sock* %91)
  %93 = load %struct.sock*, %struct.sock** %5, align 8
  %94 = getelementptr inbounds %struct.sock, %struct.sock* %93, i32 0, i32 12
  %95 = call i32 @cgroup_sk_alloc(i32* %94)
  %96 = call i32 (...) @rcu_read_lock()
  %97 = load %struct.sock*, %struct.sock** %3, align 8
  %98 = getelementptr inbounds %struct.sock, %struct.sock* %97, i32 0, i32 11
  %99 = load i32, i32* %98, align 4
  %100 = call %struct.sk_filter* @rcu_dereference(i32 %99)
  store %struct.sk_filter* %100, %struct.sk_filter** %7, align 8
  %101 = load %struct.sk_filter*, %struct.sk_filter** %7, align 8
  %102 = icmp ne %struct.sk_filter* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %36
  %104 = load %struct.sock*, %struct.sock** %5, align 8
  %105 = load %struct.sk_filter*, %struct.sk_filter** %7, align 8
  %106 = call i32 @sk_filter_charge(%struct.sock* %104, %struct.sk_filter* %105)
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %103, %36
  %108 = load %struct.sock*, %struct.sock** %5, align 8
  %109 = getelementptr inbounds %struct.sock, %struct.sock* %108, i32 0, i32 11
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.sk_filter*, %struct.sk_filter** %7, align 8
  %112 = call i32 @RCU_INIT_POINTER(i32 %110, %struct.sk_filter* %111)
  %113 = call i32 (...) @rcu_read_unlock()
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %107
  %117 = load %struct.sock*, %struct.sock** %5, align 8
  %118 = load %struct.sock*, %struct.sock** %3, align 8
  %119 = call i64 @xfrm_sk_clone_policy(%struct.sock* %117, %struct.sock* %118)
  %120 = icmp ne i64 %119, 0
  br label %121

121:                                              ; preds = %116, %107
  %122 = phi i1 [ true, %107 ], [ %120, %116 ]
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %121
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %126
  %130 = load %struct.sock*, %struct.sock** %5, align 8
  %131 = getelementptr inbounds %struct.sock, %struct.sock* %130, i32 0, i32 11
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @RCU_INIT_POINTER(i32 %132, %struct.sk_filter* null)
  br label %134

134:                                              ; preds = %129, %126
  %135 = load %struct.sock*, %struct.sock** %5, align 8
  %136 = call i32 @sk_free_unlock_clone(%struct.sock* %135)
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %205

137:                                              ; preds = %121
  %138 = load %struct.sock*, %struct.sock** %5, align 8
  %139 = getelementptr inbounds %struct.sock, %struct.sock* %138, i32 0, i32 10
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @RCU_INIT_POINTER(i32 %140, %struct.sk_filter* null)
  %142 = load %struct.sock*, %struct.sock** %3, align 8
  %143 = load %struct.sock*, %struct.sock** %5, align 8
  %144 = call i64 @bpf_sk_storage_clone(%struct.sock* %142, %struct.sock* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %137
  %147 = load %struct.sock*, %struct.sock** %5, align 8
  %148 = call i32 @sk_free_unlock_clone(%struct.sock* %147)
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %205

149:                                              ; preds = %137
  %150 = load %struct.sock*, %struct.sock** %5, align 8
  %151 = getelementptr inbounds %struct.sock, %struct.sock* %150, i32 0, i32 9
  store i64 0, i64* %151, align 8
  %152 = load %struct.sock*, %struct.sock** %5, align 8
  %153 = getelementptr inbounds %struct.sock, %struct.sock* %152, i32 0, i32 8
  store i64 0, i64* %153, align 8
  %154 = load %struct.sock*, %struct.sock** %5, align 8
  %155 = getelementptr inbounds %struct.sock, %struct.sock* %154, i32 0, i32 7
  store i64 0, i64* %155, align 8
  %156 = call i32 (...) @raw_smp_processor_id()
  %157 = load %struct.sock*, %struct.sock** %5, align 8
  %158 = getelementptr inbounds %struct.sock, %struct.sock* %157, i32 0, i32 6
  store i32 %156, i32* %158, align 4
  %159 = load %struct.sock*, %struct.sock** %5, align 8
  %160 = getelementptr inbounds %struct.sock, %struct.sock* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @likely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %149
  %165 = load %struct.sock*, %struct.sock** %5, align 8
  %166 = call i32 @sock_net(%struct.sock* %165)
  %167 = call i32 @sock_inuse_add(i32 %166, i32 1)
  br label %168

168:                                              ; preds = %164, %149
  %169 = call i32 (...) @smp_wmb()
  %170 = load %struct.sock*, %struct.sock** %5, align 8
  %171 = getelementptr inbounds %struct.sock, %struct.sock* %170, i32 0, i32 4
  %172 = call i32 @refcount_set(i32* %171, i32 2)
  %173 = load %struct.sock*, %struct.sock** %5, align 8
  %174 = call i32 @sk_refcnt_debug_inc(%struct.sock* %173)
  %175 = load %struct.sock*, %struct.sock** %5, align 8
  %176 = call i32 @sk_set_socket(%struct.sock* %175, i32* null)
  %177 = load %struct.sock*, %struct.sock** %5, align 8
  %178 = getelementptr inbounds %struct.sock, %struct.sock* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @RCU_INIT_POINTER(i32 %179, %struct.sk_filter* null)
  %181 = load %struct.sock*, %struct.sock** %5, align 8
  %182 = getelementptr inbounds %struct.sock, %struct.sock* %181, i32 0, i32 2
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %168
  %188 = load %struct.sock*, %struct.sock** %5, align 8
  %189 = call i32 @sk_sockets_allocated_inc(%struct.sock* %188)
  br label %190

190:                                              ; preds = %187, %168
  %191 = load %struct.sock*, %struct.sock** %3, align 8
  %192 = call i64 @sock_needs_netstamp(%struct.sock* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %190
  %195 = load %struct.sock*, %struct.sock** %5, align 8
  %196 = getelementptr inbounds %struct.sock, %struct.sock* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @SK_FLAGS_TIMESTAMP, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %194
  %202 = call i32 (...) @net_enable_timestamp()
  br label %203

203:                                              ; preds = %201, %194, %190
  br label %204

204:                                              ; preds = %203, %2
  br label %205

205:                                              ; preds = %204, %146, %134
  %206 = load %struct.sock*, %struct.sock** %5, align 8
  ret %struct.sock* %206
}

declare dso_local %struct.sock* @sk_prot_alloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @sock_copy(%struct.sock*, %struct.sock*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @get_net(i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @sk_node_init(i32*) #1

declare dso_local i32 @sock_lock_init(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @sk_init_common(%struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @mem_cgroup_sk_alloc(%struct.sock*) #1

declare dso_local i32 @cgroup_sk_alloc(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sk_filter* @rcu_dereference(i32) #1

declare dso_local i32 @sk_filter_charge(%struct.sock*, %struct.sk_filter*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, %struct.sk_filter*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @xfrm_sk_clone_policy(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @sk_free_unlock_clone(%struct.sock*) #1

declare dso_local i64 @bpf_sk_storage_clone(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @sock_inuse_add(i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @sk_refcnt_debug_inc(%struct.sock*) #1

declare dso_local i32 @sk_set_socket(%struct.sock*, i32*) #1

declare dso_local i32 @sk_sockets_allocated_inc(%struct.sock*) #1

declare dso_local i64 @sock_needs_netstamp(%struct.sock*) #1

declare dso_local i32 @net_enable_timestamp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
