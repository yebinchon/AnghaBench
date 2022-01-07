; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_emit_struct_def.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_emit_struct_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dump = type { i32 }
%struct.btf_type = type { i64 }
%struct.btf_member = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s%s%s {\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c": %d\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s}\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c" __attribute__((packed))\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btf_dump*, i32, %struct.btf_type*, i32)* @btf_dump_emit_struct_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btf_dump_emit_struct_def(%struct.btf_dump* %0, i32 %1, %struct.btf_type* %2, i32 %3) #0 {
  %5 = alloca %struct.btf_dump*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.btf_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.btf_member*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.btf_dump* %0, %struct.btf_dump** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.btf_type* %2, %struct.btf_type** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %20 = call %struct.btf_member* @btf_members(%struct.btf_type* %19)
  store %struct.btf_member* %20, %struct.btf_member** %9, align 8
  %21 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %22 = call i32 @btf_is_struct(%struct.btf_type* %21)
  store i32 %22, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %23 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %24 = call i32 @btf_vlen(%struct.btf_type* %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %4
  %28 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %29 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %33 = call i32 @btf_is_struct_packed(i32 %30, i32 %31, %struct.btf_type* %32)
  br label %35

34:                                               ; preds = %4
  br label %35

35:                                               ; preds = %34, %27
  %36 = phi i32 [ %33, %27 ], [ 0, %34 ]
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %46

40:                                               ; preds = %35
  %41 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %42 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @btf_align_of(i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %39
  %47 = phi i32 [ 1, %39 ], [ %45, %40 ]
  store i32 %47, i32* %11, align 4
  %48 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %53 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %54 = getelementptr inbounds %struct.btf_type, %struct.btf_type* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %59 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @btf_dump_type_name(%struct.btf_dump* %59, i32 %60)
  %62 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %52, i8* %58, i32 %61)
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %138, %46
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %143

67:                                               ; preds = %63
  %68 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %69 = load %struct.btf_member*, %struct.btf_member** %9, align 8
  %70 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @btf_name_of(%struct.btf_dump* %68, i32 %71)
  store i8* %72, i8** %16, align 8
  %73 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @btf_member_bitfield_size(%struct.btf_type* %73, i32 %74)
  store i32 %75, i32* %18, align 4
  %76 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @btf_member_bit_offset(%struct.btf_type* %76, i32 %77)
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  br label %90

82:                                               ; preds = %67
  %83 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %84 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.btf_member*, %struct.btf_member** %9, align 8
  %87 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @btf_align_of(i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %82, %81
  %91 = phi i32 [ 1, %81 ], [ %89, %82 ]
  store i32 %91, i32* %11, align 4
  %92 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  %99 = call i32 @btf_dump_emit_bit_padding(%struct.btf_dump* %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %98)
  %100 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i32 @pfx(i32 %102)
  %104 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %103)
  %105 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %106 = load %struct.btf_member*, %struct.btf_member** %9, align 8
  %107 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i8*, i8** %16, align 8
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  %112 = call i32 @btf_dump_emit_type_decl(%struct.btf_dump* %105, i32 %108, i8* %109, i32 %111)
  %113 = load i32, i32* %18, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %90
  %116 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %117 = load i32, i32* %18, align 4
  %118 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %18, align 4
  %121 = add nsw i32 %119, %120
  store i32 %121, i32* %14, align 4
  br label %135

122:                                              ; preds = %90
  %123 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %124 = getelementptr inbounds %struct.btf_dump, %struct.btf_dump* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.btf_member*, %struct.btf_member** %9, align 8
  %127 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @btf__resolve_size(i32 %125, i32 %128)
  %130 = call i32 @max(i32 0, i32 %129)
  store i32 %130, i32* %18, align 4
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %18, align 4
  %133 = mul nsw i32 %132, 8
  %134 = add nsw i32 %131, %133
  store i32 %134, i32* %14, align 4
  br label %135

135:                                              ; preds = %122, %115
  %136 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %137 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %12, align 4
  %141 = load %struct.btf_member*, %struct.btf_member** %9, align 8
  %142 = getelementptr inbounds %struct.btf_member, %struct.btf_member* %141, i32 1
  store %struct.btf_member* %142, %struct.btf_member** %9, align 8
  br label %63

143:                                              ; preds = %63
  %144 = load i32, i32* %15, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %148 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %143
  %150 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @pfx(i32 %151)
  %153 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* %13, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = load %struct.btf_dump*, %struct.btf_dump** %5, align 8
  %158 = call i32 (%struct.btf_dump*, i8*, ...) @btf_dump_printf(%struct.btf_dump* %157, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %159

159:                                              ; preds = %156, %149
  ret void
}

declare dso_local %struct.btf_member* @btf_members(%struct.btf_type*) #1

declare dso_local i32 @btf_is_struct(%struct.btf_type*) #1

declare dso_local i32 @btf_vlen(%struct.btf_type*) #1

declare dso_local i32 @btf_is_struct_packed(i32, i32, %struct.btf_type*) #1

declare dso_local i32 @btf_align_of(i32, i32) #1

declare dso_local i32 @btf_dump_printf(%struct.btf_dump*, i8*, ...) #1

declare dso_local i32 @btf_dump_type_name(%struct.btf_dump*, i32) #1

declare dso_local i8* @btf_name_of(%struct.btf_dump*, i32) #1

declare dso_local i32 @btf_member_bitfield_size(%struct.btf_type*, i32) #1

declare dso_local i32 @btf_member_bit_offset(%struct.btf_type*, i32) #1

declare dso_local i32 @btf_dump_emit_bit_padding(%struct.btf_dump*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pfx(i32) #1

declare dso_local i32 @btf_dump_emit_type_decl(%struct.btf_dump*, i32, i8*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @btf__resolve_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
