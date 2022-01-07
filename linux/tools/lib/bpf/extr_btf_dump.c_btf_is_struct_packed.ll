; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_is_struct_packed.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_is_struct_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.btf_type = type { i32 }
%struct.btf_member = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf*, i32, %struct.btf_type*)* @btf_is_struct_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_is_struct_packed(%struct.btf* %0, i32 %1, %struct.btf_type* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.btf_type*, align 8
  %8 = alloca %struct.btf_member*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.btf* %0, %struct.btf** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.btf_type* %2, %struct.btf_type** %7, align 8
  %13 = load %struct.btf*, %struct.btf** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @btf_align_of(%struct.btf* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %17 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %9, align 4
  %20 = srem i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %59

23:                                               ; preds = %3
  %24 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %25 = call %struct.btf_member* @btf_members(%struct.btf_type* %24)
  store %struct.btf_member* %25, %struct.btf_member** %8, align 8
  %26 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %27 = call i32 @btf_vlen(%struct.btf_type* %26)
  store i32 %27, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %53, %23
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %28
  %33 = load %struct.btf*, %struct.btf** %5, align 8
  %34 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %35 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @btf_align_of(%struct.btf* %33, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @btf_member_bitfield_size(%struct.btf_type* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %32
  %44 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %45 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = mul nsw i32 8, %47
  %49 = srem i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %59

52:                                               ; preds = %43, %32
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  %56 = load %struct.btf_member*, %struct.btf_member** %8, align 8
  %57 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %56, i32 1
  store %struct.btf_member* %57, %struct.btf_member** %8, align 8
  br label %28

58:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %51, %22
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @btf_align_of(%struct.btf*, i32) #1

declare dso_local %struct.btf_member* @btf_members(%struct.btf_type*) #1

declare dso_local i32 @btf_vlen(%struct.btf_type*) #1

declare dso_local i32 @btf_member_bitfield_size(%struct.btf_type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
