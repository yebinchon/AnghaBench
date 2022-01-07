; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_alloc_pg_vec.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_alloc_pg_vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgv = type { i32 }
%struct.tpacket_req = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pgv* (%struct.tpacket_req*, i32)* @alloc_pg_vec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pgv* @alloc_pg_vec(%struct.tpacket_req* %0, i32 %1) #0 {
  %3 = alloca %struct.tpacket_req*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pgv*, align 8
  %7 = alloca i32, align 4
  store %struct.tpacket_req* %0, %struct.tpacket_req** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.tpacket_req*, %struct.tpacket_req** %3, align 8
  %9 = getelementptr inbounds %struct.tpacket_req, %struct.tpacket_req* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = load i32, i32* @__GFP_NOWARN, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.pgv* @kcalloc(i32 %11, i32 4, i32 %14)
  store %struct.pgv* %15, %struct.pgv** %6, align 8
  %16 = load %struct.pgv*, %struct.pgv** %6, align 8
  %17 = icmp ne %struct.pgv* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %53

23:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %49, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @alloc_one_pg_vec_page(i32 %29)
  %31 = load %struct.pgv*, %struct.pgv** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.pgv, %struct.pgv* %31, i64 %33
  %35 = getelementptr inbounds %struct.pgv, %struct.pgv* %34, i32 0, i32 0
  store i32 %30, i32* %35, align 4
  %36 = load %struct.pgv*, %struct.pgv** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.pgv, %struct.pgv* %36, i64 %38
  %40 = getelementptr inbounds %struct.pgv, %struct.pgv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %28
  br label %55

48:                                               ; preds = %28
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %24

52:                                               ; preds = %24
  br label %53

53:                                               ; preds = %55, %52, %22
  %54 = load %struct.pgv*, %struct.pgv** %6, align 8
  ret %struct.pgv* %54

55:                                               ; preds = %47
  %56 = load %struct.pgv*, %struct.pgv** %6, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @free_pg_vec(%struct.pgv* %56, i32 %57, i32 %58)
  store %struct.pgv* null, %struct.pgv** %6, align 8
  br label %53
}

declare dso_local %struct.pgv* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @alloc_one_pg_vec_page(i32) #1

declare dso_local i32 @free_pg_vec(%struct.pgv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
