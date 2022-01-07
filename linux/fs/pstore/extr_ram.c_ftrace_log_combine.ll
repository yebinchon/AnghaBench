; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_ram.c_ftrace_log_combine.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_ram.c_ftrace_log_combine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.persistent_ram_zone = type { i64, i8* }
%struct.pstore_ftrace_record = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.persistent_ram_zone*, %struct.persistent_ram_zone*)* @ftrace_log_combine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftrace_log_combine(%struct.persistent_ram_zone* %0, %struct.persistent_ram_zone* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.persistent_ram_zone*, align 8
  %5 = alloca %struct.persistent_ram_zone*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.pstore_ftrace_record*, align 8
  %16 = alloca %struct.pstore_ftrace_record*, align 8
  %17 = alloca %struct.pstore_ftrace_record*, align 8
  %18 = alloca i64, align 8
  store %struct.persistent_ram_zone* %0, %struct.persistent_ram_zone** %4, align 8
  store %struct.persistent_ram_zone* %1, %struct.persistent_ram_zone** %5, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 4, i64* %18, align 8
  %19 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %4, align 8
  %20 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %18, align 8
  %23 = urem i64 %21, %22
  store i64 %23, i64* %9, align 8
  %24 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %4, align 8
  %25 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = sub i64 %26, %27
  store i64 %28, i64* %6, align 8
  %29 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %5, align 8
  %30 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %18, align 8
  %33 = urem i64 %31, %32
  store i64 %33, i64* %10, align 8
  %34 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %5, align 8
  %35 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = sub i64 %36, %37
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %39, %40
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kmalloc(i64 %42, i32 %43)
  store i8* %44, i8** %14, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %2
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %159

50:                                               ; preds = %2
  %51 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %4, align 8
  %52 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr i8, i8* %53, i64 %54
  %56 = bitcast i8* %55 to %struct.pstore_ftrace_record*
  store %struct.pstore_ftrace_record* %56, %struct.pstore_ftrace_record** %15, align 8
  %57 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %5, align 8
  %58 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr i8, i8* %59, i64 %60
  %62 = bitcast i8* %61 to %struct.pstore_ftrace_record*
  store %struct.pstore_ftrace_record* %62, %struct.pstore_ftrace_record** %16, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = bitcast i8* %63 to %struct.pstore_ftrace_record*
  store %struct.pstore_ftrace_record* %64, %struct.pstore_ftrace_record** %17, align 8
  br label %65

65:                                               ; preds = %111, %50
  %66 = load i64, i64* %6, align 8
  %67 = icmp ugt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i64, i64* %7, align 8
  %70 = icmp ugt i64 %69, 0
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i1 [ false, %65 ], [ %70, %68 ]
  br i1 %72, label %73, label %112

73:                                               ; preds = %71
  %74 = load %struct.pstore_ftrace_record*, %struct.pstore_ftrace_record** %15, align 8
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds %struct.pstore_ftrace_record, %struct.pstore_ftrace_record* %74, i64 %75
  %77 = call i64 @pstore_ftrace_read_timestamp(%struct.pstore_ftrace_record* %76)
  %78 = load %struct.pstore_ftrace_record*, %struct.pstore_ftrace_record** %16, align 8
  %79 = load i64, i64* %12, align 8
  %80 = getelementptr inbounds %struct.pstore_ftrace_record, %struct.pstore_ftrace_record* %78, i64 %79
  %81 = call i64 @pstore_ftrace_read_timestamp(%struct.pstore_ftrace_record* %80)
  %82 = icmp slt i64 %77, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %73
  %84 = load %struct.pstore_ftrace_record*, %struct.pstore_ftrace_record** %17, align 8
  %85 = load i64, i64* %13, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %13, align 8
  %87 = getelementptr inbounds %struct.pstore_ftrace_record, %struct.pstore_ftrace_record* %84, i64 %85
  %88 = load %struct.pstore_ftrace_record*, %struct.pstore_ftrace_record** %15, align 8
  %89 = load i64, i64* %11, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %11, align 8
  %91 = getelementptr inbounds %struct.pstore_ftrace_record, %struct.pstore_ftrace_record* %88, i64 %89
  %92 = bitcast %struct.pstore_ftrace_record* %87 to i8*
  %93 = bitcast %struct.pstore_ftrace_record* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 %93, i64 4, i1 false)
  %94 = load i64, i64* %18, align 8
  %95 = load i64, i64* %6, align 8
  %96 = sub i64 %95, %94
  store i64 %96, i64* %6, align 8
  br label %111

97:                                               ; preds = %73
  %98 = load %struct.pstore_ftrace_record*, %struct.pstore_ftrace_record** %17, align 8
  %99 = load i64, i64* %13, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %13, align 8
  %101 = getelementptr inbounds %struct.pstore_ftrace_record, %struct.pstore_ftrace_record* %98, i64 %99
  %102 = load %struct.pstore_ftrace_record*, %struct.pstore_ftrace_record** %16, align 8
  %103 = load i64, i64* %12, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %12, align 8
  %105 = getelementptr inbounds %struct.pstore_ftrace_record, %struct.pstore_ftrace_record* %102, i64 %103
  %106 = bitcast %struct.pstore_ftrace_record* %101 to i8*
  %107 = bitcast %struct.pstore_ftrace_record* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 4 %107, i64 4, i1 false)
  %108 = load i64, i64* %18, align 8
  %109 = load i64, i64* %7, align 8
  %110 = sub i64 %109, %108
  store i64 %110, i64* %7, align 8
  br label %111

111:                                              ; preds = %97, %83
  br label %65

112:                                              ; preds = %71
  br label %113

113:                                              ; preds = %116, %112
  %114 = load i64, i64* %6, align 8
  %115 = icmp ugt i64 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %113
  %117 = load %struct.pstore_ftrace_record*, %struct.pstore_ftrace_record** %17, align 8
  %118 = load i64, i64* %13, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %13, align 8
  %120 = getelementptr inbounds %struct.pstore_ftrace_record, %struct.pstore_ftrace_record* %117, i64 %118
  %121 = load %struct.pstore_ftrace_record*, %struct.pstore_ftrace_record** %15, align 8
  %122 = load i64, i64* %11, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %11, align 8
  %124 = getelementptr inbounds %struct.pstore_ftrace_record, %struct.pstore_ftrace_record* %121, i64 %122
  %125 = bitcast %struct.pstore_ftrace_record* %120 to i8*
  %126 = bitcast %struct.pstore_ftrace_record* %124 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %125, i8* align 4 %126, i64 4, i1 false)
  %127 = load i64, i64* %18, align 8
  %128 = load i64, i64* %6, align 8
  %129 = sub i64 %128, %127
  store i64 %129, i64* %6, align 8
  br label %113

130:                                              ; preds = %113
  br label %131

131:                                              ; preds = %134, %130
  %132 = load i64, i64* %7, align 8
  %133 = icmp ugt i64 %132, 0
  br i1 %133, label %134, label %148

134:                                              ; preds = %131
  %135 = load %struct.pstore_ftrace_record*, %struct.pstore_ftrace_record** %17, align 8
  %136 = load i64, i64* %13, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %13, align 8
  %138 = getelementptr inbounds %struct.pstore_ftrace_record, %struct.pstore_ftrace_record* %135, i64 %136
  %139 = load %struct.pstore_ftrace_record*, %struct.pstore_ftrace_record** %16, align 8
  %140 = load i64, i64* %12, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %12, align 8
  %142 = getelementptr inbounds %struct.pstore_ftrace_record, %struct.pstore_ftrace_record* %139, i64 %140
  %143 = bitcast %struct.pstore_ftrace_record* %138 to i8*
  %144 = bitcast %struct.pstore_ftrace_record* %142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %143, i8* align 4 %144, i64 4, i1 false)
  %145 = load i64, i64* %18, align 8
  %146 = load i64, i64* %7, align 8
  %147 = sub i64 %146, %145
  store i64 %147, i64* %7, align 8
  br label %131

148:                                              ; preds = %131
  %149 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %4, align 8
  %150 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @kfree(i8* %151)
  %153 = load i8*, i8** %14, align 8
  %154 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %4, align 8
  %155 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  %156 = load i64, i64* %8, align 8
  %157 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %4, align 8
  %158 = getelementptr inbounds %struct.persistent_ram_zone, %struct.persistent_ram_zone* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %148, %47
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @pstore_ftrace_read_timestamp(%struct.pstore_ftrace_record*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
