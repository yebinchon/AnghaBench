; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_generic_pgio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pagelist.c_nfs_generic_pgio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32, i32, i32*, i64, i32, i32 }
%struct.nfs_pgio_header = type { i32, %struct.nfs_page_array }
%struct.nfs_page_array = type { i32, %struct.page**, %struct.page** }
%struct.page = type { i32 }
%struct.nfs_pgio_mirror = type { i32, i32, %struct.list_head }
%struct.list_head = type { i32 }
%struct.nfs_page = type { %struct.page* }
%struct.nfs_commit_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FLUSH_COND_STABLE = common dso_local global i32 0, align 4
@nfs_pgio_common_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_generic_pgio(%struct.nfs_pageio_descriptor* %0, %struct.nfs_pgio_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_pageio_descriptor*, align 8
  %5 = alloca %struct.nfs_pgio_header*, align 8
  %6 = alloca %struct.nfs_pgio_mirror*, align 8
  %7 = alloca %struct.nfs_page*, align 8
  %8 = alloca %struct.page**, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.list_head*, align 8
  %11 = alloca %struct.nfs_commit_info, align 4
  %12 = alloca %struct.nfs_page_array*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %4, align 8
  store %struct.nfs_pgio_header* %1, %struct.nfs_pgio_header** %5, align 8
  %16 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %17 = call %struct.nfs_pgio_mirror* @nfs_pgio_current_mirror(%struct.nfs_pageio_descriptor* %16)
  store %struct.nfs_pgio_mirror* %17, %struct.nfs_pgio_mirror** %6, align 8
  %18 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %6, align 8
  %19 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %18, i32 0, i32 2
  store %struct.list_head* %19, %struct.list_head** %10, align 8
  %20 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %21 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %20, i32 0, i32 1
  store %struct.nfs_page_array* %21, %struct.nfs_page_array** %12, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  store i32 %22, i32* %15, align 4
  %23 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %6, align 8
  %24 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %6, align 8
  %27 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nfs_page_array_len(i32 %25, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load %struct.nfs_page_array*, %struct.nfs_page_array** %12, align 8
  %32 = getelementptr inbounds %struct.nfs_page_array, %struct.nfs_page_array* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load %struct.nfs_page_array*, %struct.nfs_page_array** %12, align 8
  %35 = getelementptr inbounds %struct.nfs_page_array, %struct.nfs_page_array* %34, i32 0, i32 2
  %36 = load %struct.page**, %struct.page*** %35, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.page** %36)
  %38 = icmp ule i32 %33, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %2
  %40 = load %struct.nfs_page_array*, %struct.nfs_page_array** %12, align 8
  %41 = getelementptr inbounds %struct.nfs_page_array, %struct.nfs_page_array* %40, i32 0, i32 2
  %42 = load %struct.page**, %struct.page*** %41, align 8
  %43 = load %struct.nfs_page_array*, %struct.nfs_page_array** %12, align 8
  %44 = getelementptr inbounds %struct.nfs_page_array, %struct.nfs_page_array* %43, i32 0, i32 1
  store %struct.page** %42, %struct.page*** %44, align 8
  br label %68

45:                                               ; preds = %2
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %15, align 4
  %48 = call %struct.page** @kcalloc(i32 %46, i32 8, i32 %47)
  %49 = load %struct.nfs_page_array*, %struct.nfs_page_array** %12, align 8
  %50 = getelementptr inbounds %struct.nfs_page_array, %struct.nfs_page_array* %49, i32 0, i32 1
  store %struct.page** %48, %struct.page*** %50, align 8
  %51 = load %struct.nfs_page_array*, %struct.nfs_page_array** %12, align 8
  %52 = getelementptr inbounds %struct.nfs_page_array, %struct.nfs_page_array* %51, i32 0, i32 1
  %53 = load %struct.page**, %struct.page*** %52, align 8
  %54 = icmp ne %struct.page** %53, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %45
  %56 = load %struct.nfs_page_array*, %struct.nfs_page_array** %12, align 8
  %57 = getelementptr inbounds %struct.nfs_page_array, %struct.nfs_page_array* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %59 = call i32 @nfs_pgio_error(%struct.nfs_pgio_header* %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  %62 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %63 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %65 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %3, align 4
  br label %166

67:                                               ; preds = %45
  br label %68

68:                                               ; preds = %67, %39
  %69 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %70 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %73 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @nfs_init_cinfo(%struct.nfs_commit_info* %11, i32 %71, i32 %74)
  %76 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %77 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.nfs_page_array, %struct.nfs_page_array* %77, i32 0, i32 1
  %79 = load %struct.page**, %struct.page*** %78, align 8
  store %struct.page** %79, %struct.page*** %8, align 8
  store %struct.page* null, %struct.page** %9, align 8
  store i32 0, i32* %14, align 4
  br label %80

80:                                               ; preds = %115, %68
  %81 = load %struct.list_head*, %struct.list_head** %10, align 8
  %82 = call i32 @list_empty(%struct.list_head* %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br i1 %84, label %85, label %116

85:                                               ; preds = %80
  %86 = load %struct.list_head*, %struct.list_head** %10, align 8
  %87 = getelementptr inbounds %struct.list_head, %struct.list_head* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.nfs_page* @nfs_list_entry(i32 %88)
  store %struct.nfs_page* %89, %struct.nfs_page** %7, align 8
  %90 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %91 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %92 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %91, i32 0, i32 0
  %93 = call i32 @nfs_list_move_request(%struct.nfs_page* %90, i32* %92)
  %94 = load %struct.page*, %struct.page** %9, align 8
  %95 = icmp ne %struct.page* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %85
  %97 = load %struct.page*, %struct.page** %9, align 8
  %98 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %99 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %98, i32 0, i32 0
  %100 = load %struct.page*, %struct.page** %99, align 8
  %101 = icmp ne %struct.page* %97, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %96, %85
  %103 = load i32, i32* %14, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp ugt i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %116

109:                                              ; preds = %102
  %110 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %111 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %110, i32 0, i32 0
  %112 = load %struct.page*, %struct.page** %111, align 8
  store %struct.page* %112, %struct.page** %9, align 8
  %113 = load %struct.page**, %struct.page*** %8, align 8
  %114 = getelementptr inbounds %struct.page*, %struct.page** %113, i32 1
  store %struct.page** %114, %struct.page*** %8, align 8
  store %struct.page* %112, %struct.page** %113, align 8
  br label %115

115:                                              ; preds = %109, %96
  br label %80

116:                                              ; preds = %108, %80
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i64 @WARN_ON_ONCE(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %116
  %124 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %125 = call i32 @nfs_pgio_error(%struct.nfs_pgio_header* %124)
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  %128 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %129 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %131 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %3, align 4
  br label %166

133:                                              ; preds = %116
  %134 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %135 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @FLUSH_COND_STABLE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %133
  %141 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %142 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  %146 = call i64 @nfs_reqs_to_commit(%struct.nfs_commit_info* %11)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %145, %140
  %149 = load i32, i32* @FLUSH_COND_STABLE, align 4
  %150 = xor i32 %149, -1
  %151 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %152 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %148, %145, %133
  %156 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %157 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %6, align 8
  %158 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %161 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @nfs_pgio_rpcsetup(%struct.nfs_pgio_header* %156, i32 %159, i32 %162, %struct.nfs_commit_info* %11)
  %164 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %165 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %164, i32 0, i32 2
  store i32* @nfs_pgio_common_ops, i32** %165, align 8
  store i32 0, i32* %3, align 4
  br label %166

166:                                              ; preds = %155, %123, %55
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local %struct.nfs_pgio_mirror* @nfs_pgio_current_mirror(%struct.nfs_pageio_descriptor*) #1

declare dso_local i32 @nfs_page_array_len(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.page**) #1

declare dso_local %struct.page** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @nfs_pgio_error(%struct.nfs_pgio_header*) #1

declare dso_local i32 @nfs_init_cinfo(%struct.nfs_commit_info*, i32, i32) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local %struct.nfs_page* @nfs_list_entry(i32) #1

declare dso_local i32 @nfs_list_move_request(%struct.nfs_page*, i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @nfs_reqs_to_commit(%struct.nfs_commit_info*) #1

declare dso_local i32 @nfs_pgio_rpcsetup(%struct.nfs_pgio_header*, i32, i32, %struct.nfs_commit_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
