; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_hash.c_nft_rhash_walk.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_hash.c_nft_rhash_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_set = type { i32 }
%struct.nft_set_iter = type { i64, i64, i32, i32 (%struct.nft_ctx.0*, %struct.nft_set.1*, %struct.nft_set_iter*, %struct.nft_set_elem*)*, i32 }
%struct.nft_ctx.0 = type opaque
%struct.nft_set.1 = type opaque
%struct.nft_set_elem = type opaque
%struct.nft_rhash = type { i32 }
%struct.nft_rhash_elem = type { i32 }
%struct.rhashtable_iter = type { i32 }
%struct.nft_set_elem.2 = type { %struct.nft_rhash_elem* }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_ctx*, %struct.nft_set*, %struct.nft_set_iter*)* @nft_rhash_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_rhash_walk(%struct.nft_ctx* %0, %struct.nft_set* %1, %struct.nft_set_iter* %2) #0 {
  %4 = alloca %struct.nft_ctx*, align 8
  %5 = alloca %struct.nft_set*, align 8
  %6 = alloca %struct.nft_set_iter*, align 8
  %7 = alloca %struct.nft_rhash*, align 8
  %8 = alloca %struct.nft_rhash_elem*, align 8
  %9 = alloca %struct.rhashtable_iter, align 4
  %10 = alloca %struct.nft_set_elem.2, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %4, align 8
  store %struct.nft_set* %1, %struct.nft_set** %5, align 8
  store %struct.nft_set_iter* %2, %struct.nft_set_iter** %6, align 8
  %11 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %12 = call %struct.nft_rhash* @nft_set_priv(%struct.nft_set* %11)
  store %struct.nft_rhash* %12, %struct.nft_rhash** %7, align 8
  %13 = load %struct.nft_rhash*, %struct.nft_rhash** %7, align 8
  %14 = getelementptr inbounds %struct.nft_rhash, %struct.nft_rhash* %13, i32 0, i32 0
  %15 = call i32 @rhashtable_walk_enter(i32* %14, %struct.rhashtable_iter* %9)
  %16 = call i32 @rhashtable_walk_start(%struct.rhashtable_iter* %9)
  br label %17

17:                                               ; preds = %81, %35, %3
  %18 = call %struct.nft_rhash_elem* @rhashtable_walk_next(%struct.rhashtable_iter* %9)
  store %struct.nft_rhash_elem* %18, %struct.nft_rhash_elem** %8, align 8
  %19 = icmp ne %struct.nft_rhash_elem* %18, null
  br i1 %19, label %20, label %86

20:                                               ; preds = %17
  %21 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %8, align 8
  %22 = call i64 @IS_ERR(%struct.nft_rhash_elem* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %8, align 8
  %26 = call i32 @PTR_ERR(%struct.nft_rhash_elem* %25)
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %8, align 8
  %32 = call i32 @PTR_ERR(%struct.nft_rhash_elem* %31)
  %33 = load %struct.nft_set_iter*, %struct.nft_set_iter** %6, align 8
  %34 = getelementptr inbounds %struct.nft_set_iter, %struct.nft_set_iter* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  br label %86

35:                                               ; preds = %24
  br label %17

36:                                               ; preds = %20
  %37 = load %struct.nft_set_iter*, %struct.nft_set_iter** %6, align 8
  %38 = getelementptr inbounds %struct.nft_set_iter, %struct.nft_set_iter* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.nft_set_iter*, %struct.nft_set_iter** %6, align 8
  %41 = getelementptr inbounds %struct.nft_set_iter, %struct.nft_set_iter* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %81

45:                                               ; preds = %36
  %46 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %8, align 8
  %47 = getelementptr inbounds %struct.nft_rhash_elem, %struct.nft_rhash_elem* %46, i32 0, i32 0
  %48 = call i64 @nft_set_elem_expired(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %81

51:                                               ; preds = %45
  %52 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %8, align 8
  %53 = getelementptr inbounds %struct.nft_rhash_elem, %struct.nft_rhash_elem* %52, i32 0, i32 0
  %54 = load %struct.nft_set_iter*, %struct.nft_set_iter** %6, align 8
  %55 = getelementptr inbounds %struct.nft_set_iter, %struct.nft_set_iter* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @nft_set_elem_active(i32* %53, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  br label %81

60:                                               ; preds = %51
  %61 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %8, align 8
  %62 = getelementptr inbounds %struct.nft_set_elem.2, %struct.nft_set_elem.2* %10, i32 0, i32 0
  store %struct.nft_rhash_elem* %61, %struct.nft_rhash_elem** %62, align 8
  %63 = load %struct.nft_set_iter*, %struct.nft_set_iter** %6, align 8
  %64 = getelementptr inbounds %struct.nft_set_iter, %struct.nft_set_iter* %63, i32 0, i32 3
  %65 = load i32 (%struct.nft_ctx.0*, %struct.nft_set.1*, %struct.nft_set_iter*, %struct.nft_set_elem*)*, i32 (%struct.nft_ctx.0*, %struct.nft_set.1*, %struct.nft_set_iter*, %struct.nft_set_elem*)** %64, align 8
  %66 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %67 = bitcast %struct.nft_ctx* %66 to %struct.nft_ctx.0*
  %68 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %69 = bitcast %struct.nft_set* %68 to %struct.nft_set.1*
  %70 = load %struct.nft_set_iter*, %struct.nft_set_iter** %6, align 8
  %71 = bitcast %struct.nft_set_elem.2* %10 to %struct.nft_set_elem*
  %72 = call i32 %65(%struct.nft_ctx.0* %67, %struct.nft_set.1* %69, %struct.nft_set_iter* %70, %struct.nft_set_elem* %71)
  %73 = load %struct.nft_set_iter*, %struct.nft_set_iter** %6, align 8
  %74 = getelementptr inbounds %struct.nft_set_iter, %struct.nft_set_iter* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.nft_set_iter*, %struct.nft_set_iter** %6, align 8
  %76 = getelementptr inbounds %struct.nft_set_iter, %struct.nft_set_iter* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %60
  br label %86

80:                                               ; preds = %60
  br label %81

81:                                               ; preds = %80, %59, %50, %44
  %82 = load %struct.nft_set_iter*, %struct.nft_set_iter** %6, align 8
  %83 = getelementptr inbounds %struct.nft_set_iter, %struct.nft_set_iter* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %83, align 8
  br label %17

86:                                               ; preds = %79, %30, %17
  %87 = call i32 @rhashtable_walk_stop(%struct.rhashtable_iter* %9)
  %88 = call i32 @rhashtable_walk_exit(%struct.rhashtable_iter* %9)
  ret void
}

declare dso_local %struct.nft_rhash* @nft_set_priv(%struct.nft_set*) #1

declare dso_local i32 @rhashtable_walk_enter(i32*, %struct.rhashtable_iter*) #1

declare dso_local i32 @rhashtable_walk_start(%struct.rhashtable_iter*) #1

declare dso_local %struct.nft_rhash_elem* @rhashtable_walk_next(%struct.rhashtable_iter*) #1

declare dso_local i64 @IS_ERR(%struct.nft_rhash_elem*) #1

declare dso_local i32 @PTR_ERR(%struct.nft_rhash_elem*) #1

declare dso_local i64 @nft_set_elem_expired(i32*) #1

declare dso_local i32 @nft_set_elem_active(i32*, i32) #1

declare dso_local i32 @rhashtable_walk_stop(%struct.rhashtable_iter*) #1

declare dso_local i32 @rhashtable_walk_exit(%struct.rhashtable_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
