; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program_reloc_btf_ext.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_program_reloc_btf_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { i32, i32, i32, i32, i32, i32 }
%struct.bpf_object = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"bpf_func_info\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"bpf_line_info\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_program*, %struct.bpf_object*, i8*, i32)* @bpf_program_reloc_btf_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_program_reloc_btf_ext(%struct.bpf_program* %0, %struct.bpf_object* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_program*, align 8
  %7 = alloca %struct.bpf_object*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bpf_program* %0, %struct.bpf_program** %6, align 8
  store %struct.bpf_object* %1, %struct.bpf_object** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load %struct.bpf_program*, %struct.bpf_program** %6, align 8
  %15 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %13, %4
  %19 = load %struct.bpf_object*, %struct.bpf_object** %7, align 8
  %20 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bpf_object*, %struct.bpf_object** %7, align 8
  %23 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.bpf_program*, %struct.bpf_program** %6, align 8
  %28 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %27, i32 0, i32 4
  %29 = load %struct.bpf_program*, %struct.bpf_program** %6, align 8
  %30 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %29, i32 0, i32 5
  %31 = call i32 @btf_ext__reloc_func_info(i32 %21, i32 %24, i8* %25, i32 %26, i32* %28, i32* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %18
  %35 = load %struct.bpf_program*, %struct.bpf_program** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.bpf_program*, %struct.bpf_program** %6, align 8
  %38 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @check_btf_ext_reloc_err(%struct.bpf_program* %35, i32 %36, i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %40, i32* %5, align 4
  br label %87

41:                                               ; preds = %18
  %42 = load %struct.bpf_object*, %struct.bpf_object** %7, align 8
  %43 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @btf_ext__func_info_rec_size(i32 %44)
  %46 = load %struct.bpf_program*, %struct.bpf_program** %6, align 8
  %47 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %41, %13
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.bpf_program*, %struct.bpf_program** %6, align 8
  %53 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %86

56:                                               ; preds = %51, %48
  %57 = load %struct.bpf_object*, %struct.bpf_object** %7, align 8
  %58 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.bpf_object*, %struct.bpf_object** %7, align 8
  %61 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.bpf_program*, %struct.bpf_program** %6, align 8
  %66 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %65, i32 0, i32 1
  %67 = load %struct.bpf_program*, %struct.bpf_program** %6, align 8
  %68 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %67, i32 0, i32 2
  %69 = call i32 @btf_ext__reloc_line_info(i32 %59, i32 %62, i8* %63, i32 %64, i32* %66, i32* %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %56
  %73 = load %struct.bpf_program*, %struct.bpf_program** %6, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.bpf_program*, %struct.bpf_program** %6, align 8
  %76 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @check_btf_ext_reloc_err(%struct.bpf_program* %73, i32 %74, i32 %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %78, i32* %5, align 4
  br label %87

79:                                               ; preds = %56
  %80 = load %struct.bpf_object*, %struct.bpf_object** %7, align 8
  %81 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @btf_ext__line_info_rec_size(i32 %82)
  %84 = load %struct.bpf_program*, %struct.bpf_program** %6, align 8
  %85 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %79, %51
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %72, %34
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @btf_ext__reloc_func_info(i32, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @check_btf_ext_reloc_err(%struct.bpf_program*, i32, i32, i8*) #1

declare dso_local i32 @btf_ext__func_info_rec_size(i32) #1

declare dso_local i32 @btf_ext__reloc_line_info(i32, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @btf_ext__line_info_rec_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
