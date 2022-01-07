; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_mpage.c_mpage_readpages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_mpage.c_mpage_readpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.list_head = type { i32 }
%struct.mpage_readpage_args = type { i32, i32, i64, %struct.page*, i32 }
%struct.page = type { i32, i32, i32 }

@REQ_OP_READ = common dso_local global i32 0, align 4
@REQ_RAHEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpage_readpages(%struct.address_space* %0, %struct.list_head* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mpage_readpage_args, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = bitcast %struct.mpage_readpage_args* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  %13 = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %9, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %9, i32 0, i32 4
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %14, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %50, %4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = load %struct.list_head*, %struct.list_head** %6, align 8
  %22 = call %struct.page* @lru_to_page(%struct.list_head* %21)
  store %struct.page* %22, %struct.page** %11, align 8
  %23 = load %struct.page*, %struct.page** %11, align 8
  %24 = getelementptr inbounds %struct.page, %struct.page* %23, i32 0, i32 2
  %25 = call i32 @prefetchw(i32* %24)
  %26 = load %struct.page*, %struct.page** %11, align 8
  %27 = getelementptr inbounds %struct.page, %struct.page* %26, i32 0, i32 1
  %28 = call i32 @list_del(i32* %27)
  %29 = load %struct.page*, %struct.page** %11, align 8
  %30 = load %struct.address_space*, %struct.address_space** %5, align 8
  %31 = load %struct.page*, %struct.page** %11, align 8
  %32 = getelementptr inbounds %struct.page, %struct.page* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.address_space*, %struct.address_space** %5, align 8
  %35 = call i32 @readahead_gfp_mask(%struct.address_space* %34)
  %36 = call i32 @add_to_page_cache_lru(%struct.page* %29, %struct.address_space* %30, i32 %33, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %20
  %39 = load %struct.page*, %struct.page** %11, align 8
  %40 = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %9, i32 0, i32 3
  store %struct.page* %39, %struct.page** %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sub i32 %41, %42
  %44 = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %9, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = call i64 @do_mpage_readpage(%struct.mpage_readpage_args* %9)
  %46 = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %9, i32 0, i32 2
  store i64 %45, i64* %46, align 8
  br label %47

47:                                               ; preds = %38, %20
  %48 = load %struct.page*, %struct.page** %11, align 8
  %49 = call i32 @put_page(%struct.page* %48)
  br label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %16

53:                                               ; preds = %16
  %54 = load %struct.list_head*, %struct.list_head** %6, align 8
  %55 = call i32 @list_empty(%struct.list_head* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @BUG_ON(i32 %58)
  %60 = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %9, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = load i32, i32* @REQ_OP_READ, align 4
  %65 = load i32, i32* @REQ_RAHEAD, align 4
  %66 = getelementptr inbounds %struct.mpage_readpage_args, %struct.mpage_readpage_args* %9, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @mpage_bio_submit(i32 %64, i32 %65, i64 %67)
  br label %69

69:                                               ; preds = %63, %53
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.page* @lru_to_page(%struct.list_head*) #2

declare dso_local i32 @prefetchw(i32*) #2

declare dso_local i32 @list_del(i32*) #2

declare dso_local i32 @add_to_page_cache_lru(%struct.page*, %struct.address_space*, i32, i32) #2

declare dso_local i32 @readahead_gfp_mask(%struct.address_space*) #2

declare dso_local i64 @do_mpage_readpage(%struct.mpage_readpage_args*) #2

declare dso_local i32 @put_page(%struct.page*) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @list_empty(%struct.list_head*) #2

declare dso_local i32 @mpage_bio_submit(i32, i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
