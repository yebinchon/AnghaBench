; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_byidx_resize.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_byidx_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.hlist_head* }
%struct.hlist_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, i32)* @xfrm_byidx_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm_byidx_resize(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hlist_head*, align 8
  %9 = alloca %struct.hlist_head*, align 8
  %10 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.net*, %struct.net** %3, align 8
  %12 = getelementptr inbounds %struct.net, %struct.net* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @xfrm_new_hash_mask(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load %struct.net*, %struct.net** %3, align 8
  %23 = getelementptr inbounds %struct.net, %struct.net* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load %struct.hlist_head*, %struct.hlist_head** %24, align 8
  store %struct.hlist_head* %25, %struct.hlist_head** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.hlist_head* @xfrm_hash_alloc(i32 %26)
  store %struct.hlist_head* %27, %struct.hlist_head** %9, align 8
  %28 = load %struct.hlist_head*, %struct.hlist_head** %9, align 8
  %29 = icmp ne %struct.hlist_head* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %71

31:                                               ; preds = %2
  %32 = load %struct.net*, %struct.net** %3, align 8
  %33 = getelementptr inbounds %struct.net, %struct.net* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = call i32 @spin_lock_bh(i32* %34)
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %48, %31
  %38 = load i32, i32* %10, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.hlist_head*, %struct.hlist_head** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %41, i64 %43
  %45 = load %struct.hlist_head*, %struct.hlist_head** %9, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @xfrm_idx_hash_transfer(%struct.hlist_head* %44, %struct.hlist_head* %45, i32 %46)
  br label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %10, align 4
  br label %37

51:                                               ; preds = %37
  %52 = load %struct.hlist_head*, %struct.hlist_head** %9, align 8
  %53 = load %struct.net*, %struct.net** %3, align 8
  %54 = getelementptr inbounds %struct.net, %struct.net* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store %struct.hlist_head* %52, %struct.hlist_head** %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.net*, %struct.net** %3, align 8
  %58 = getelementptr inbounds %struct.net, %struct.net* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.net*, %struct.net** %3, align 8
  %61 = getelementptr inbounds %struct.net, %struct.net* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = call i32 @spin_unlock_bh(i32* %62)
  %64 = load %struct.hlist_head*, %struct.hlist_head** %8, align 8
  %65 = load i32, i32* %5, align 4
  %66 = add i32 %65, 1
  %67 = zext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i32 @xfrm_hash_free(%struct.hlist_head* %64, i32 %69)
  br label %71

71:                                               ; preds = %51, %30
  ret void
}

declare dso_local i32 @xfrm_new_hash_mask(i32) #1

declare dso_local %struct.hlist_head* @xfrm_hash_alloc(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @xfrm_idx_hash_transfer(%struct.hlist_head*, %struct.hlist_head*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @xfrm_hash_free(%struct.hlist_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
