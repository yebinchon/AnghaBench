; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_align_of.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_align_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.btf_type = type { i32, i32 }
%struct.btf_member = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"unsupported BTF_KIND:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf*, i32)* @btf_align_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_align_of(%struct.btf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btf_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btf_member*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.btf* %0, %struct.btf** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.btf*, %struct.btf** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.btf_type* @btf__type_by_id(%struct.btf* %12, i32 %13)
  store %struct.btf_type* %14, %struct.btf_type** %6, align 8
  %15 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %16 = call i32 @btf_kind(%struct.btf_type* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %61 [
    i32 134, label %18
    i32 135, label %18
    i32 133, label %23
    i32 130, label %24
    i32 128, label %24
    i32 136, label %24
    i32 132, label %24
    i32 137, label %30
    i32 131, label %37
    i32 129, label %37
  ]

18:                                               ; preds = %2, %2
  %19 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %20 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @min(i32 8, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %65

23:                                               ; preds = %2
  store i32 8, i32* %3, align 4
  br label %65

24:                                               ; preds = %2, %2, %2, %2
  %25 = load %struct.btf*, %struct.btf** %4, align 8
  %26 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %27 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @btf_align_of(%struct.btf* %25, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %65

30:                                               ; preds = %2
  %31 = load %struct.btf*, %struct.btf** %4, align 8
  %32 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %33 = call %struct.TYPE_2__* @btf_array(%struct.btf_type* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @btf_align_of(%struct.btf* %31, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %65

37:                                               ; preds = %2, %2
  %38 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %39 = call %struct.btf_member* @btf_members(%struct.btf_type* %38)
  store %struct.btf_member* %39, %struct.btf_member** %8, align 8
  %40 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %41 = call i32 @btf_vlen(%struct.btf_type* %40)
  store i32 %41, i32* %9, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %54, %37
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.btf*, %struct.btf** %4, align 8
  %49 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %50 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @btf_align_of(%struct.btf* %48, i32 %51)
  %53 = call i32 @max(i32 %47, i32 %52)
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  %57 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %58 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %57, i32 1
  store %struct.btf_member* %58, %struct.btf_member** %8, align 8
  br label %42

59:                                               ; preds = %42
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %3, align 4
  br label %65

61:                                               ; preds = %2
  %62 = load %struct.btf_type*, %struct.btf_type** %6, align 8
  %63 = call i32 @btf_kind(%struct.btf_type* %62)
  %64 = call i32 @pr_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %63)
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %59, %30, %24, %23, %18
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.btf_type* @btf__type_by_id(%struct.btf*, i32) #1

declare dso_local i32 @btf_kind(%struct.btf_type*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.TYPE_2__* @btf_array(%struct.btf_type*) #1

declare dso_local %struct.btf_member* @btf_members(%struct.btf_type*) #1

declare dso_local i32 @btf_vlen(%struct.btf_type*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
