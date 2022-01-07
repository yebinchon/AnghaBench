; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_platform.c_pstore_dump.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_platform.c_pstore_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i32 (%struct.pstore_record*)*, i32 }
%struct.pstore_record = type { i32, i32, i32, i8*, i32, i32, i32 }
%struct.kmsg_dumper = type { i32 }

@psinfo = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"dump skipped in %s path: may corrupt error record\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"NMI\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"could not grab semaphore?!\0A\00", align 1
@oopscount = common dso_local global i32 0, align 4
@kmsg_bytes = common dso_local global i64 0, align 8
@PSTORE_TYPE_DMESG = common dso_local global i32 0, align 4
@big_oops_buf = common dso_local global i8* null, align 8
@big_oops_buf_sz = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"%s#%d Part%u\0A\00", align 1
@KMSG_DUMP_OOPS = common dso_local global i32 0, align 4
@pstore_new_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmsg_dumper*, i32)* @pstore_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pstore_dump(%struct.kmsg_dumper* %0, i32 %1) #0 {
  %3 = alloca %struct.kmsg_dumper*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.pstore_record, align 8
  store %struct.kmsg_dumper* %0, %struct.kmsg_dumper** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i32 1, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i8* @get_reason_str(i32 %15)
  store i8* %16, i8** %6, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @psinfo, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = call i64 @down_trylock(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @pstore_cannot_wait(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = call i64 (...) @in_nmi()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %31

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %28 ], [ %30, %29 ]
  %33 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %159

34:                                               ; preds = %21
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @psinfo, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = call i64 @down_interruptible(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %159

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i32, i32* @oopscount, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @oopscount, align 4
  br label %45

45:                                               ; preds = %147, %42
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @kmsg_bytes, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %155

49:                                               ; preds = %45
  store i32 -1, i32* %12, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @psinfo, align 8
  %51 = call i32 @pstore_record_init(%struct.pstore_record* %14, %struct.TYPE_3__* %50)
  %52 = load i32, i32* @PSTORE_TYPE_DMESG, align 4
  %53 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %14, i32 0, i32 6
  store i32 %52, i32* %53, align 8
  %54 = load i32, i32* @oopscount, align 4
  %55 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %14, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  %56 = load i32, i32* %4, align 4
  %57 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %14, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %7, align 4
  %59 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %14, i32 0, i32 2
  store i32 %58, i32* %59, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @psinfo, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %14, i32 0, i32 3
  store i8* %62, i8** %63, align 8
  %64 = load i8*, i8** @big_oops_buf, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %49
  %67 = load i8*, i8** @big_oops_buf, align 8
  store i8* %67, i8** %9, align 8
  %68 = load i64, i64* @big_oops_buf_sz, align 8
  store i64 %68, i64* %10, align 8
  br label %76

69:                                               ; preds = %49
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @psinfo, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %9, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @psinfo, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %10, align 8
  br label %76

76:                                               ; preds = %69, %66
  %77 = load i8*, i8** %9, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* @oopscount, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @snprintf(i8* %77, i64 %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %79, i32 %80, i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %10, align 8
  %86 = sub i64 %85, %84
  store i64 %86, i64* %10, align 8
  %87 = load %struct.kmsg_dumper*, %struct.kmsg_dumper** %3, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @kmsg_dump_get_buffer(%struct.kmsg_dumper* %87, i32 1, i8* %91, i64 %92, i64* %13)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %76
  br label %155

96:                                               ; preds = %76
  %97 = load i8*, i8** @big_oops_buf, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %125

99:                                               ; preds = %96
  %100 = load i8*, i8** %9, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** @psinfo, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %13, align 8
  %107 = add i64 %105, %106
  %108 = trunc i64 %107 to i32
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** @psinfo, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @pstore_compress(i8* %100, i8* %103, i32 %108, i64 %111)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %99
  %116 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %14, i32 0, i32 4
  store i32 1, i32* %116, align 8
  %117 = load i32, i32* %12, align 4
  %118 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %14, i32 0, i32 5
  store i32 %117, i32* %118, align 4
  br label %124

119:                                              ; preds = %99
  %120 = load i32, i32* %11, align 4
  %121 = load i64, i64* %13, align 8
  %122 = call i32 @copy_kmsg_to_buffer(i32 %120, i64 %121)
  %123 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %14, i32 0, i32 5
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %119, %115
  br label %132

125:                                              ; preds = %96
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* %13, align 8
  %129 = add i64 %127, %128
  %130 = trunc i64 %129 to i32
  %131 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %14, i32 0, i32 5
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %125, %124
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** @psinfo, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  %135 = load i32 (%struct.pstore_record*)*, i32 (%struct.pstore_record*)** %134, align 8
  %136 = call i32 %135(%struct.pstore_record* %14)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %132
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @KMSG_DUMP_OOPS, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = call i64 (...) @pstore_is_mounted()
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i32 1, i32* @pstore_new_entry, align 4
  br label %147

147:                                              ; preds = %146, %143, %139, %132
  %148 = getelementptr inbounds %struct.pstore_record, %struct.pstore_record* %14, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = load i64, i64* %5, align 8
  %152 = add i64 %151, %150
  store i64 %152, i64* %5, align 8
  %153 = load i32, i32* %7, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %7, align 4
  br label %45

155:                                              ; preds = %95, %45
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** @psinfo, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 3
  %158 = call i32 @up(i32* %157)
  br label %159

159:                                              ; preds = %155, %39, %31
  ret void
}

declare dso_local i8* @get_reason_str(i32) #1

declare dso_local i64 @down_trylock(i32*) #1

declare dso_local i64 @pstore_cannot_wait(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @in_nmi(...) #1

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @pstore_record_init(%struct.pstore_record*, %struct.TYPE_3__*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32, i32) #1

declare dso_local i32 @kmsg_dump_get_buffer(%struct.kmsg_dumper*, i32, i8*, i64, i64*) #1

declare dso_local i32 @pstore_compress(i8*, i8*, i32, i64) #1

declare dso_local i32 @copy_kmsg_to_buffer(i32, i64) #1

declare dso_local i64 @pstore_is_mounted(...) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
