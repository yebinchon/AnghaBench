; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_flow_offload.c_flow_block_cb_setup_simple.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_flow_offload.c_flow_block_cb_setup_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_block_offload = type { i64, i32, i32, %struct.list_head* }
%struct.list_head = type { i32 }
%struct.flow_block_cb = type { i32 }

@FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flow_block_cb_setup_simple(%struct.flow_block_offload* %0, %struct.list_head* %1, i32* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.flow_block_offload*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.flow_block_cb*, align 8
  store %struct.flow_block_offload* %0, %struct.flow_block_offload** %8, align 8
  store %struct.list_head* %1, %struct.list_head** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %13, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %6
  %18 = load %struct.flow_block_offload*, %struct.flow_block_offload** %8, align 8
  %19 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %83

26:                                               ; preds = %17, %6
  %27 = load %struct.list_head*, %struct.list_head** %9, align 8
  %28 = load %struct.flow_block_offload*, %struct.flow_block_offload** %8, align 8
  %29 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %28, i32 0, i32 3
  store %struct.list_head* %27, %struct.list_head** %29, align 8
  %30 = load %struct.flow_block_offload*, %struct.flow_block_offload** %8, align 8
  %31 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %80 [
    i32 129, label %33
    i32 128, label %61
  ]

33:                                               ; preds = %26
  %34 = load i32*, i32** %10, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load %struct.list_head*, %struct.list_head** %9, align 8
  %37 = call i32 @flow_block_cb_is_busy(i32* %34, i8* %35, %struct.list_head* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %83

42:                                               ; preds = %33
  %43 = load i32*, i32** %10, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = call %struct.flow_block_cb* @flow_block_cb_alloc(i32* %43, i8* %44, i8* %45, i32* null)
  store %struct.flow_block_cb* %46, %struct.flow_block_cb** %14, align 8
  %47 = load %struct.flow_block_cb*, %struct.flow_block_cb** %14, align 8
  %48 = call i32 @IS_ERR(%struct.flow_block_cb* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.flow_block_cb*, %struct.flow_block_cb** %14, align 8
  %52 = call i32 @PTR_ERR(%struct.flow_block_cb* %51)
  store i32 %52, i32* %7, align 4
  br label %83

53:                                               ; preds = %42
  %54 = load %struct.flow_block_cb*, %struct.flow_block_cb** %14, align 8
  %55 = load %struct.flow_block_offload*, %struct.flow_block_offload** %8, align 8
  %56 = call i32 @flow_block_cb_add(%struct.flow_block_cb* %54, %struct.flow_block_offload* %55)
  %57 = load %struct.flow_block_cb*, %struct.flow_block_cb** %14, align 8
  %58 = getelementptr inbounds %struct.flow_block_cb, %struct.flow_block_cb* %57, i32 0, i32 0
  %59 = load %struct.list_head*, %struct.list_head** %9, align 8
  %60 = call i32 @list_add_tail(i32* %58, %struct.list_head* %59)
  store i32 0, i32* %7, align 4
  br label %83

61:                                               ; preds = %26
  %62 = load %struct.flow_block_offload*, %struct.flow_block_offload** %8, align 8
  %63 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = call %struct.flow_block_cb* @flow_block_cb_lookup(i32 %64, i32* %65, i8* %66)
  store %struct.flow_block_cb* %67, %struct.flow_block_cb** %14, align 8
  %68 = load %struct.flow_block_cb*, %struct.flow_block_cb** %14, align 8
  %69 = icmp ne %struct.flow_block_cb* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %61
  %71 = load i32, i32* @ENOENT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %83

73:                                               ; preds = %61
  %74 = load %struct.flow_block_cb*, %struct.flow_block_cb** %14, align 8
  %75 = load %struct.flow_block_offload*, %struct.flow_block_offload** %8, align 8
  %76 = call i32 @flow_block_cb_remove(%struct.flow_block_cb* %74, %struct.flow_block_offload* %75)
  %77 = load %struct.flow_block_cb*, %struct.flow_block_cb** %14, align 8
  %78 = getelementptr inbounds %struct.flow_block_cb, %struct.flow_block_cb* %77, i32 0, i32 0
  %79 = call i32 @list_del(i32* %78)
  store i32 0, i32* %7, align 4
  br label %83

80:                                               ; preds = %26
  %81 = load i32, i32* @EOPNOTSUPP, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %80, %73, %70, %53, %50, %39, %23
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @flow_block_cb_is_busy(i32*, i8*, %struct.list_head*) #1

declare dso_local %struct.flow_block_cb* @flow_block_cb_alloc(i32*, i8*, i8*, i32*) #1

declare dso_local i32 @IS_ERR(%struct.flow_block_cb*) #1

declare dso_local i32 @PTR_ERR(%struct.flow_block_cb*) #1

declare dso_local i32 @flow_block_cb_add(%struct.flow_block_cb*, %struct.flow_block_offload*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local %struct.flow_block_cb* @flow_block_cb_lookup(i32, i32*, i8*) #1

declare dso_local i32 @flow_block_cb_remove(%struct.flow_block_cb*, %struct.flow_block_offload*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
