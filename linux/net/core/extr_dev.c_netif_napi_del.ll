; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netif_napi_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netif_napi_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netif_napi_del(%struct.napi_struct* %0) #0 {
  %2 = alloca %struct.napi_struct*, align 8
  store %struct.napi_struct* %0, %struct.napi_struct** %2, align 8
  %3 = call i32 (...) @might_sleep()
  %4 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %5 = call i64 @napi_hash_del(%struct.napi_struct* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (...) @synchronize_net()
  br label %9

9:                                                ; preds = %7, %1
  %10 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %11 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %10, i32 0, i32 1
  %12 = call i32 @list_del_init(i32* %11)
  %13 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %14 = call i32 @napi_free_frags(%struct.napi_struct* %13)
  %15 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %16 = call i32 @flush_gro_hash(%struct.napi_struct* %15)
  %17 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %18 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @napi_hash_del(%struct.napi_struct*) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @napi_free_frags(%struct.napi_struct*) #1

declare dso_local i32 @flush_gro_hash(%struct.napi_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
