; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_sadb2xfrm_user_sec_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_sadb2xfrm_user_sec_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_user_sec_ctx = type { i32, i32, i32, i32, i32 }
%struct.sadb_x_sec_ctx = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_user_sec_ctx* (%struct.sadb_x_sec_ctx*, i32)* @pfkey_sadb2xfrm_user_sec_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_user_sec_ctx* @pfkey_sadb2xfrm_user_sec_ctx(%struct.sadb_x_sec_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.xfrm_user_sec_ctx*, align 8
  %4 = alloca %struct.sadb_x_sec_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_user_sec_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.sadb_x_sec_ctx* %0, %struct.sadb_x_sec_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.xfrm_user_sec_ctx* null, %struct.xfrm_user_sec_ctx** %6, align 8
  %8 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 20, %12
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.xfrm_user_sec_ctx* @kmalloc(i32 %14, i32 %15)
  store %struct.xfrm_user_sec_ctx* %16, %struct.xfrm_user_sec_ctx** %6, align 8
  %17 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %6, align 8
  %18 = icmp ne %struct.xfrm_user_sec_ctx* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store %struct.xfrm_user_sec_ctx* null, %struct.xfrm_user_sec_ctx** %3, align 8
  br label %54

20:                                               ; preds = %2
  %21 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %4, align 8
  %22 = call i32 @pfkey_sec_ctx_len(%struct.sadb_x_sec_ctx* %21)
  %23 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %6, align 8
  %29 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %6, align 8
  %39 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %6, align 8
  %44 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %6, align 8
  %46 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %45, i64 1
  %47 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %4, align 8
  %48 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %47, i64 1
  %49 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %6, align 8
  %50 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcpy(%struct.xfrm_user_sec_ctx* %46, %struct.sadb_x_sec_ctx* %48, i32 %51)
  %53 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %6, align 8
  store %struct.xfrm_user_sec_ctx* %53, %struct.xfrm_user_sec_ctx** %3, align 8
  br label %54

54:                                               ; preds = %20, %19
  %55 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %3, align 8
  ret %struct.xfrm_user_sec_ctx* %55
}

declare dso_local %struct.xfrm_user_sec_ctx* @kmalloc(i32, i32) #1

declare dso_local i32 @pfkey_sec_ctx_len(%struct.sadb_x_sec_ctx*) #1

declare dso_local i32 @memcpy(%struct.xfrm_user_sec_ctx*, %struct.sadb_x_sec_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
