; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dump = type { i32*, i32*, %struct.TYPE_2__, i32, %struct.btf_ext*, %struct.btf* }
%struct.TYPE_2__ = type { i32* }
%struct.btf = type { i32 }
%struct.btf_ext = type { i32 }
%struct.btf_dump_opts = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@str_hash_fn = common dso_local global i32 0, align 4
@str_equal_fn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btf_dump* @btf_dump__new(%struct.btf* %0, %struct.btf_ext* %1, %struct.btf_dump_opts* %2, i32 %3) #0 {
  %5 = alloca %struct.btf_dump*, align 8
  %6 = alloca %struct.btf*, align 8
  %7 = alloca %struct.btf_ext*, align 8
  %8 = alloca %struct.btf_dump_opts*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btf_dump*, align 8
  %11 = alloca i32, align 4
  store %struct.btf* %0, %struct.btf** %6, align 8
  store %struct.btf_ext* %1, %struct.btf_ext** %7, align 8
  store %struct.btf_dump_opts* %2, %struct.btf_dump_opts** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = call %struct.btf_dump* @calloc(i32 1, i32 48)
  store %struct.btf_dump* %12, %struct.btf_dump** %10, align 8
  %13 = load %struct.btf_dump*, %struct.btf_dump** %10, align 8
  %14 = icmp ne %struct.btf_dump* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.btf_dump* @ERR_PTR(i32 %17)
  store %struct.btf_dump* %18, %struct.btf_dump** %5, align 8
  br label %88

19:                                               ; preds = %4
  %20 = load %struct.btf*, %struct.btf** %6, align 8
  %21 = load %struct.btf_dump*, %struct.btf_dump** %10, align 8
  %22 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %21, i32 0, i32 5
  store %struct.btf* %20, %struct.btf** %22, align 8
  %23 = load %struct.btf_ext*, %struct.btf_ext** %7, align 8
  %24 = load %struct.btf_dump*, %struct.btf_dump** %10, align 8
  %25 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %24, i32 0, i32 4
  store %struct.btf_ext* %23, %struct.btf_ext** %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.btf_dump*, %struct.btf_dump** %10, align 8
  %28 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.btf_dump_opts*, %struct.btf_dump_opts** %8, align 8
  %30 = icmp ne %struct.btf_dump_opts* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = load %struct.btf_dump_opts*, %struct.btf_dump_opts** %8, align 8
  %33 = getelementptr inbounds %struct.btf_dump_opts, %struct.btf_dump_opts* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  br label %36

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i32* [ %34, %31 ], [ null, %35 ]
  %38 = load %struct.btf_dump*, %struct.btf_dump** %10, align 8
  %39 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32* %37, i32** %40, align 8
  %41 = load i32, i32* @str_hash_fn, align 4
  %42 = load i32, i32* @str_equal_fn, align 4
  %43 = call i8* @hashmap__new(i32 %41, i32 %42, i32* null)
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.btf_dump*, %struct.btf_dump** %10, align 8
  %46 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = load %struct.btf_dump*, %struct.btf_dump** %10, align 8
  %48 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @IS_ERR(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %36
  %53 = load %struct.btf_dump*, %struct.btf_dump** %10, align 8
  %54 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @PTR_ERR(i32* %55)
  store i32 %56, i32* %11, align 4
  %57 = load %struct.btf_dump*, %struct.btf_dump** %10, align 8
  %58 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  %59 = load %struct.btf_dump*, %struct.btf_dump** %10, align 8
  %60 = call i32 @btf_dump__free(%struct.btf_dump* %59)
  %61 = load i32, i32* %11, align 4
  %62 = call %struct.btf_dump* @ERR_PTR(i32 %61)
  store %struct.btf_dump* %62, %struct.btf_dump** %5, align 8
  br label %88

63:                                               ; preds = %36
  %64 = load i32, i32* @str_hash_fn, align 4
  %65 = load i32, i32* @str_equal_fn, align 4
  %66 = call i8* @hashmap__new(i32 %64, i32 %65, i32* null)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.btf_dump*, %struct.btf_dump** %10, align 8
  %69 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %68, i32 0, i32 0
  store i32* %67, i32** %69, align 8
  %70 = load %struct.btf_dump*, %struct.btf_dump** %10, align 8
  %71 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i64 @IS_ERR(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %63
  %76 = load %struct.btf_dump*, %struct.btf_dump** %10, align 8
  %77 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @PTR_ERR(i32* %78)
  store i32 %79, i32* %11, align 4
  %80 = load %struct.btf_dump*, %struct.btf_dump** %10, align 8
  %81 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %80, i32 0, i32 0
  store i32* null, i32** %81, align 8
  %82 = load %struct.btf_dump*, %struct.btf_dump** %10, align 8
  %83 = call i32 @btf_dump__free(%struct.btf_dump* %82)
  %84 = load i32, i32* %11, align 4
  %85 = call %struct.btf_dump* @ERR_PTR(i32 %84)
  store %struct.btf_dump* %85, %struct.btf_dump** %5, align 8
  br label %88

86:                                               ; preds = %63
  %87 = load %struct.btf_dump*, %struct.btf_dump** %10, align 8
  store %struct.btf_dump* %87, %struct.btf_dump** %5, align 8
  br label %88

88:                                               ; preds = %86, %75, %52, %15
  %89 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  ret %struct.btf_dump* %89
}

declare dso_local %struct.btf_dump* @calloc(i32, i32) #1

declare dso_local %struct.btf_dump* @ERR_PTR(i32) #1

declare dso_local i8* @hashmap__new(i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @btf_dump__free(%struct.btf_dump*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
