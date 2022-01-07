; ModuleID = '/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_unattach.c'
source_filename = "/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_unattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcm_psock = type { i32, i32, i32, i32, %struct.TYPE_5__*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, %struct.kcm_mux*, %struct.sock* }
%struct.TYPE_5__ = type { i32 }
%struct.kcm_mux = type { i32, i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.sock = type { %struct.TYPE_6__*, i32, i32, i32, i32, i32* }
%struct.TYPE_6__ = type { i32 }

@EPIPE = common dso_local global i32 0, align 4
@kcm_wq = common dso_local global i32 0, align 4
@kcm_psockp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kcm_psock*)* @kcm_unattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcm_unattach(%struct.kcm_psock* %0) #0 {
  %2 = alloca %struct.kcm_psock*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.kcm_mux*, align 8
  store %struct.kcm_psock* %0, %struct.kcm_psock** %2, align 8
  %5 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %6 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %5, i32 0, i32 15
  %7 = load %struct.sock*, %struct.sock** %6, align 8
  store %struct.sock* %7, %struct.sock** %3, align 8
  %8 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %9 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %8, i32 0, i32 14
  %10 = load %struct.kcm_mux*, %struct.kcm_mux** %9, align 8
  store %struct.kcm_mux* %10, %struct.kcm_mux** %4, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call i32 @lock_sock(%struct.sock* %11)
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 1
  %15 = call i32 @write_lock_bh(i32* %14)
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 5
  store i32* null, i32** %17, align 8
  %18 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %19 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %18, i32 0, i32 13
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %24 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %23, i32 0, i32 12
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %29 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %28, i32 0, i32 11
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %34 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %33, i32 0, i32 5
  %35 = call i32 @strp_stop(i32* %34)
  %36 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %37 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @WARN_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %1
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 1
  %44 = call i32 @write_unlock_bh(i32* %43)
  %45 = load %struct.sock*, %struct.sock** %3, align 8
  %46 = call i32 @release_sock(%struct.sock* %45)
  br label %178

47:                                               ; preds = %1
  %48 = load %struct.kcm_mux*, %struct.kcm_mux** %4, align 8
  %49 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %48, i32 0, i32 5
  %50 = call i32 @spin_lock_bh(i32* %49)
  %51 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %52 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %51, i32 0, i32 8
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %70

55:                                               ; preds = %47
  %56 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %57 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %56, i32 0, i32 9
  %58 = call i32 @list_del(i32* %57)
  %59 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %60 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %59, i32 0, i32 8
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @kfree_skb(i32* %61)
  %63 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %64 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %63, i32 0, i32 8
  store i32* null, i32** %64, align 8
  %65 = load %struct.kcm_mux*, %struct.kcm_mux** %4, align 8
  %66 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @KCM_STATS_INCR(i32 %68)
  br label %70

70:                                               ; preds = %55, %47
  %71 = load %struct.kcm_mux*, %struct.kcm_mux** %4, align 8
  %72 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %71, i32 0, i32 5
  %73 = call i32 @spin_unlock_bh(i32* %72)
  %74 = load %struct.sock*, %struct.sock** %3, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 1
  %76 = call i32 @write_unlock_bh(i32* %75)
  %77 = load %struct.sock*, %struct.sock** %3, align 8
  %78 = call i32 @release_sock(%struct.sock* %77)
  %79 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %80 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %79, i32 0, i32 5
  %81 = call i32 @strp_done(i32* %80)
  %82 = load %struct.sock*, %struct.sock** %3, align 8
  %83 = call i32 @lock_sock(%struct.sock* %82)
  %84 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %85 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @bpf_prog_put(i32 %86)
  %88 = load %struct.kcm_mux*, %struct.kcm_mux** %4, align 8
  %89 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %88, i32 0, i32 0
  %90 = call i32 @spin_lock_bh(i32* %89)
  %91 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %92 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %91, i32 0, i32 6
  %93 = load %struct.kcm_mux*, %struct.kcm_mux** %4, align 8
  %94 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %93, i32 0, i32 4
  %95 = call i32 @aggregate_psock_stats(i32* %92, i32* %94)
  %96 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %97 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %96, i32 0, i32 5
  %98 = load %struct.kcm_mux*, %struct.kcm_mux** %4, align 8
  %99 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %98, i32 0, i32 3
  %100 = call i32 @save_strp_stats(i32* %97, i32* %99)
  %101 = load %struct.kcm_mux*, %struct.kcm_mux** %4, align 8
  %102 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @KCM_STATS_INCR(i32 %104)
  %106 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %107 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %106, i32 0, i32 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = icmp ne %struct.TYPE_5__* %108, null
  br i1 %109, label %110, label %143

110:                                              ; preds = %70
  %111 = load %struct.kcm_mux*, %struct.kcm_mux** %4, align 8
  %112 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @KCM_STATS_INCR(i32 %114)
  %116 = load %struct.kcm_mux*, %struct.kcm_mux** %4, align 8
  %117 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %116, i32 0, i32 0
  %118 = call i32 @spin_unlock_bh(i32* %117)
  %119 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %120 = load i32, i32* @EPIPE, align 4
  %121 = call i32 @kcm_abort_tx_psock(%struct.kcm_psock* %119, i32 %120, i32 0)
  %122 = load %struct.kcm_mux*, %struct.kcm_mux** %4, align 8
  %123 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %122, i32 0, i32 0
  %124 = call i32 @spin_lock_bh(i32* %123)
  %125 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %126 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %125, i32 0, i32 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = icmp ne %struct.TYPE_5__* %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %110
  br label %144

130:                                              ; preds = %110
  %131 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %132 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  %133 = call i32 (...) @smp_mb()
  %134 = load i32, i32* @kcm_wq, align 4
  %135 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %136 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %135, i32 0, i32 4
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = call i32 @queue_work(i32 %134, i32* %138)
  %140 = load %struct.kcm_mux*, %struct.kcm_mux** %4, align 8
  %141 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %140, i32 0, i32 0
  %142 = call i32 @spin_unlock_bh(i32* %141)
  br label %175

143:                                              ; preds = %70
  br label %144

144:                                              ; preds = %143, %129
  %145 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %146 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %144
  %150 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %151 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %150, i32 0, i32 2
  %152 = call i32 @list_del(i32* %151)
  br label %153

153:                                              ; preds = %149, %144
  %154 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %155 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %154, i32 0, i32 1
  %156 = call i32 @list_del(i32* %155)
  %157 = load %struct.kcm_mux*, %struct.kcm_mux** %4, align 8
  %158 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %158, align 4
  %161 = load %struct.kcm_mux*, %struct.kcm_mux** %4, align 8
  %162 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %161, i32 0, i32 0
  %163 = call i32 @spin_unlock_bh(i32* %162)
  %164 = load %struct.sock*, %struct.sock** %3, align 8
  %165 = call i32 @sock_put(%struct.sock* %164)
  %166 = load %struct.sock*, %struct.sock** %3, align 8
  %167 = getelementptr inbounds %struct.sock, %struct.sock* %166, i32 0, i32 0
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @fput(i32 %170)
  %172 = load i32, i32* @kcm_psockp, align 4
  %173 = load %struct.kcm_psock*, %struct.kcm_psock** %2, align 8
  %174 = call i32 @kmem_cache_free(i32 %172, %struct.kcm_psock* %173)
  br label %175

175:                                              ; preds = %153, %130
  %176 = load %struct.sock*, %struct.sock** %3, align 8
  %177 = call i32 @release_sock(%struct.sock* %176)
  br label %178

178:                                              ; preds = %175, %41
  ret void
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @strp_stop(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32 @KCM_STATS_INCR(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @strp_done(i32*) #1

declare dso_local i32 @bpf_prog_put(i32) #1

declare dso_local i32 @aggregate_psock_stats(i32*, i32*) #1

declare dso_local i32 @save_strp_stats(i32*, i32*) #1

declare dso_local i32 @kcm_abort_tx_psock(%struct.kcm_psock*, i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @fput(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.kcm_psock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
