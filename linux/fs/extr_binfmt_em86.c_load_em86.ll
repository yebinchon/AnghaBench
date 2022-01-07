; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_binfmt_em86.c_load_em86.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_binfmt_em86.c_load_em86.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { i32, i8*, %struct.file*, i32, i64 }
%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.elfhdr = type { i64, i64, i32 }

@ELFMAG = common dso_local global i32 0, align 4
@SELFMAG = common dso_local global i32 0, align 4
@ENOEXEC = common dso_local global i32 0, align 4
@ET_EXEC = common dso_local global i64 0, align 8
@ET_DYN = common dso_local global i64 0, align 8
@EM_386 = common dso_local global i64 0, align 8
@EM_486 = common dso_local global i64 0, align 8
@BINPRM_FLAGS_PATH_INACCESSIBLE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EM86_INTERP = common dso_local global i8* null, align 8
@EM86_I_NAME = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linux_binprm*)* @load_em86 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_em86(%struct.linux_binprm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.elfhdr, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  %10 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %11 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.elfhdr*
  %14 = bitcast %struct.elfhdr* %9 to i8*
  %15 = bitcast %struct.elfhdr* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 24, i1 false)
  %16 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %9, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ELFMAG, align 4
  %19 = load i32, i32* @SELFMAG, align 4
  %20 = call i64 @memcmp(i32 %17, i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOEXEC, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %142

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %9, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ET_EXEC, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %9, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ET_DYN, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %54, label %35

35:                                               ; preds = %30, %25
  %36 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %9, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EM_386, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %9, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @EM_486, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %40, %35
  %46 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %47 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %46, i32 0, i32 2
  %48 = load %struct.file*, %struct.file** %47, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %45, %40, %30
  %55 = load i32, i32* @ENOEXEC, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %142

57:                                               ; preds = %45
  %58 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %59 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @BINPRM_FLAGS_PATH_INACCESSIBLE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %142

67:                                               ; preds = %57
  %68 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %69 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %68, i32 0, i32 2
  %70 = load %struct.file*, %struct.file** %69, align 8
  %71 = call i32 @allow_write_access(%struct.file* %70)
  %72 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %73 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %72, i32 0, i32 2
  %74 = load %struct.file*, %struct.file** %73, align 8
  %75 = call i32 @fput(%struct.file* %74)
  %76 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %77 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %76, i32 0, i32 2
  store %struct.file* null, %struct.file** %77, align 8
  %78 = load i8*, i8** @EM86_INTERP, align 8
  store i8* %78, i8** %6, align 8
  %79 = load i8*, i8** @EM86_I_NAME, align 8
  store i8* %79, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %80 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %81 = call i32 @remove_arg_zero(%struct.linux_binprm* %80)
  %82 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %83 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %82, i32 0, i32 1
  %84 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %85 = call i32 @copy_strings_kernel(i32 1, i8** %83, %struct.linux_binprm* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %67
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %2, align 4
  br label %142

90:                                               ; preds = %67
  %91 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %92 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %109

97:                                               ; preds = %90
  %98 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %99 = call i32 @copy_strings_kernel(i32 1, i8** %5, %struct.linux_binprm* %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %2, align 4
  br label %142

104:                                              ; preds = %97
  %105 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %106 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %104, %90
  %110 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %111 = call i32 @copy_strings_kernel(i32 1, i8** %4, %struct.linux_binprm* %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %2, align 4
  br label %142

116:                                              ; preds = %109
  %117 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %118 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = call %struct.file* @open_exec(i8* %121)
  store %struct.file* %122, %struct.file** %7, align 8
  %123 = load %struct.file*, %struct.file** %7, align 8
  %124 = call i64 @IS_ERR(%struct.file* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %116
  %127 = load %struct.file*, %struct.file** %7, align 8
  %128 = call i32 @PTR_ERR(%struct.file* %127)
  store i32 %128, i32* %2, align 4
  br label %142

129:                                              ; preds = %116
  %130 = load %struct.file*, %struct.file** %7, align 8
  %131 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %132 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %131, i32 0, i32 2
  store %struct.file* %130, %struct.file** %132, align 8
  %133 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %134 = call i32 @prepare_binprm(%struct.linux_binprm* %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %129
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %2, align 4
  br label %142

139:                                              ; preds = %129
  %140 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %141 = call i32 @search_binary_handler(%struct.linux_binprm* %140)
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %139, %137, %126, %114, %102, %88, %64, %54, %22
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @memcmp(i32, i32, i32) #2

declare dso_local i32 @allow_write_access(%struct.file*) #2

declare dso_local i32 @fput(%struct.file*) #2

declare dso_local i32 @remove_arg_zero(%struct.linux_binprm*) #2

declare dso_local i32 @copy_strings_kernel(i32, i8**, %struct.linux_binprm*) #2

declare dso_local %struct.file* @open_exec(i8*) #2

declare dso_local i64 @IS_ERR(%struct.file*) #2

declare dso_local i32 @PTR_ERR(%struct.file*) #2

declare dso_local i32 @prepare_binprm(%struct.linux_binprm*) #2

declare dso_local i32 @search_binary_handler(%struct.linux_binprm*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
