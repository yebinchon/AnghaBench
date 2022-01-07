; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_snapshot_write_next.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_snapshot_write_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chain_allocator = type { i32 }
%struct.snapshot_handle = type { i32, i32, i8* }

@snapshot_write_next.ca = internal global %struct.chain_allocator zeroinitializer, align 4
@nr_meta_pages = common dso_local global i32 0, align 4
@nr_copy_pages = common dso_local global i32 0, align 4
@buffer = common dso_local global i8* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PG_ANY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@safe_pages_list = common dso_local global i32* null, align 8
@copy_bm = common dso_local global i32 0, align 4
@orig_bm = common dso_local global i32 0, align 4
@PG_SAFE = common dso_local global i32 0, align 4
@restore_pblist = common dso_local global i32* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snapshot_write_next(%struct.snapshot_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snapshot_handle*, align 8
  %4 = alloca i32, align 4
  store %struct.snapshot_handle* %0, %struct.snapshot_handle** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %6 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %11 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @nr_meta_pages, align 4
  %14 = load i32, i32* @nr_copy_pages, align 4
  %15 = add nsw i32 %13, %14
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %161

18:                                               ; preds = %9, %1
  %19 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %20 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %22 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %18
  %26 = load i8*, i8** @buffer, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = load i32, i32* @PG_ANY, align 4
  %31 = call i8* @get_image_page(i32 %29, i32 %30)
  store i8* %31, i8** @buffer, align 8
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i8*, i8** @buffer, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %161

38:                                               ; preds = %32
  %39 = load i8*, i8** @buffer, align 8
  %40 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %41 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  br label %155

42:                                               ; preds = %18
  %43 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %44 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %71

47:                                               ; preds = %42
  %48 = load i8*, i8** @buffer, align 8
  %49 = call i32 @load_header(i8* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %161

54:                                               ; preds = %47
  store i32* null, i32** @safe_pages_list, align 8
  %55 = load i32, i32* @GFP_ATOMIC, align 4
  %56 = load i32, i32* @PG_ANY, align 4
  %57 = call i32 @memory_bm_create(i32* @copy_bm, i32 %55, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %161

62:                                               ; preds = %54
  %63 = load i32, i32* @nr_copy_pages, align 4
  %64 = call i32 @page_key_alloc(i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %161

69:                                               ; preds = %62
  %70 = call i32 (...) @hibernate_restore_protection_begin()
  br label %154

71:                                               ; preds = %42
  %72 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %73 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @nr_meta_pages, align 4
  %76 = add nsw i32 %75, 1
  %77 = icmp sle i32 %74, %76
  br i1 %77, label %78, label %120

78:                                               ; preds = %71
  %79 = load i8*, i8** @buffer, align 8
  %80 = call i32 @unpack_orig_pfns(i8* %79, i32* @copy_bm)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %161

85:                                               ; preds = %78
  %86 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %87 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @nr_meta_pages, align 4
  %90 = add nsw i32 %89, 1
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %119

92:                                               ; preds = %85
  %93 = call i32 @prepare_image(i32* @orig_bm, i32* @copy_bm)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %161

98:                                               ; preds = %92
  %99 = load i32, i32* @GFP_ATOMIC, align 4
  %100 = load i32, i32* @PG_SAFE, align 4
  %101 = call i32 @chain_init(%struct.chain_allocator* @snapshot_write_next.ca, i32 %99, i32 %100)
  %102 = call i32 @memory_bm_position_reset(i32* @orig_bm)
  store i32* null, i32** @restore_pblist, align 8
  %103 = call i8* @get_buffer(i32* @orig_bm, %struct.chain_allocator* @snapshot_write_next.ca)
  %104 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %105 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  %106 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %107 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %106, i32 0, i32 1
  store i32 0, i32* %107, align 4
  %108 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %109 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @IS_ERR(i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %98
  %114 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %115 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @PTR_ERR(i8* %116)
  store i32 %117, i32* %2, align 4
  br label %161

118:                                              ; preds = %98
  br label %119

119:                                              ; preds = %118, %85
  br label %153

120:                                              ; preds = %71
  %121 = call i32 (...) @copy_last_highmem_page()
  %122 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %123 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @page_key_write(i8* %124)
  %126 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %127 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @hibernate_restore_protect_page(i8* %128)
  %130 = call i8* @get_buffer(i32* @orig_bm, %struct.chain_allocator* @snapshot_write_next.ca)
  %131 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %132 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %131, i32 0, i32 2
  store i8* %130, i8** %132, align 8
  %133 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %134 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = call i64 @IS_ERR(i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %120
  %139 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %140 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %139, i32 0, i32 2
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @PTR_ERR(i8* %141)
  store i32 %142, i32* %2, align 4
  br label %161

143:                                              ; preds = %120
  %144 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %145 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = load i8*, i8** @buffer, align 8
  %148 = icmp ne i8* %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %151 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %150, i32 0, i32 1
  store i32 0, i32* %151, align 4
  br label %152

152:                                              ; preds = %149, %143
  br label %153

153:                                              ; preds = %152, %119
  br label %154

154:                                              ; preds = %153, %69
  br label %155

155:                                              ; preds = %154, %38
  %156 = load %struct.snapshot_handle*, %struct.snapshot_handle** %3, align 8
  %157 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 8
  %160 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %155, %138, %113, %96, %83, %67, %60, %52, %35, %17
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i8* @get_image_page(i32, i32) #1

declare dso_local i32 @load_header(i8*) #1

declare dso_local i32 @memory_bm_create(i32*, i32, i32) #1

declare dso_local i32 @page_key_alloc(i32) #1

declare dso_local i32 @hibernate_restore_protection_begin(...) #1

declare dso_local i32 @unpack_orig_pfns(i8*, i32*) #1

declare dso_local i32 @prepare_image(i32*, i32*) #1

declare dso_local i32 @chain_init(%struct.chain_allocator*, i32, i32) #1

declare dso_local i32 @memory_bm_position_reset(i32*) #1

declare dso_local i8* @get_buffer(i32*, %struct.chain_allocator*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @copy_last_highmem_page(...) #1

declare dso_local i32 @page_key_write(i8*) #1

declare dso_local i32 @hibernate_restore_protect_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
