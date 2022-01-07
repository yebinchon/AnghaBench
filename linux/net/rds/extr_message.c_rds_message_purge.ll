; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_message.c_rds_message_purge.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_message.c_rds_message_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_message = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, %struct.rds_sock*, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i32*, i32* }
%struct.rds_sock = type { i32 }

@RDS_MSG_PAGEVEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_message*)* @rds_message_purge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_message_purge(%struct.rds_message* %0) #0 {
  %2 = alloca %struct.rds_message*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rds_sock*, align 8
  store %struct.rds_message* %0, %struct.rds_message** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @RDS_MSG_PAGEVEC, align 4
  %8 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %9 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %8, i32 0, i32 5
  %10 = call i32 @test_bit(i32 %7, i32* %9)
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %134

14:                                               ; preds = %1
  %15 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %16 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %15, i32 0, i32 3
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %20 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %19, i32 0, i32 4
  %21 = load %struct.rds_sock*, %struct.rds_sock** %20, align 8
  %22 = icmp ne %struct.rds_sock* %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %14
  %24 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %25 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %24, i32 0, i32 4
  %26 = load %struct.rds_sock*, %struct.rds_sock** %25, align 8
  store %struct.rds_sock* %26, %struct.rds_sock** %6, align 8
  %27 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %28 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  %33 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %34 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %35 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @rds_rm_zerocopy_callback(%struct.rds_sock* %33, i32* %37)
  %39 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %40 = call i32 @rds_wake_sk_sleep(%struct.rds_sock* %39)
  %41 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %42 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %32, %23
  %45 = load %struct.rds_sock*, %struct.rds_sock** %6, align 8
  %46 = call i32 @rds_rs_to_sk(%struct.rds_sock* %45)
  %47 = call i32 @sock_put(i32 %46)
  %48 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %49 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %48, i32 0, i32 4
  store %struct.rds_sock* null, %struct.rds_sock** %49, align 8
  br label %50

50:                                               ; preds = %44, %14
  %51 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %52 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %51, i32 0, i32 3
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  store i64 0, i64* %3, align 8
  br label %55

55:                                               ; preds = %84, %50
  %56 = load i64, i64* %3, align 8
  %57 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %58 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %56, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %55
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %62
  %66 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %67 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %3, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = call i32 @sg_page(i32* %71)
  %73 = call i32 @__free_page(i32 %72)
  br label %83

74:                                               ; preds = %62
  %75 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %76 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* %3, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = call i32 @sg_page(i32* %80)
  %82 = call i32 @put_page(i32 %81)
  br label %83

83:                                               ; preds = %74, %65
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %3, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %3, align 8
  br label %55

87:                                               ; preds = %55
  %88 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %89 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  %91 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %92 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %87
  %97 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %98 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %97, i32 0, i32 1
  %99 = call i32 @rds_rdma_free_op(%struct.TYPE_5__* %98)
  br label %100

100:                                              ; preds = %96, %87
  %101 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %102 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %108 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @rds_mr_put(i64 %110)
  br label %112

112:                                              ; preds = %106, %100
  %113 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %114 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %120 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %119, i32 0, i32 0
  %121 = call i32 @rds_atomic_free_op(%struct.TYPE_6__* %120)
  br label %122

122:                                              ; preds = %118, %112
  %123 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %124 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %122
  %129 = load %struct.rds_message*, %struct.rds_message** %2, align 8
  %130 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @rds_mr_put(i64 %132)
  br label %134

134:                                              ; preds = %13, %128, %122
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rds_rm_zerocopy_callback(%struct.rds_sock*, i32*) #1

declare dso_local i32 @rds_wake_sk_sleep(%struct.rds_sock*) #1

declare dso_local i32 @sock_put(i32) #1

declare dso_local i32 @rds_rs_to_sk(%struct.rds_sock*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__free_page(i32) #1

declare dso_local i32 @sg_page(i32*) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @rds_rdma_free_op(%struct.TYPE_5__*) #1

declare dso_local i32 @rds_mr_put(i64) #1

declare dso_local i32 @rds_atomic_free_op(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
