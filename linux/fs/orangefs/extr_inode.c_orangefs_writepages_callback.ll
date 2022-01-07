; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c_orangefs_writepages_callback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c_orangefs_writepages_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.writeback_control = type { i32 }
%struct.orangefs_writepages = type { i64, i64, i64, i64, %struct.page**, i32, i32 }
%struct.orangefs_write_range = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"writepages_callback not private!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*, i8*)* @orangefs_writepages_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_writepages_callback(%struct.page* %0, %struct.writeback_control* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.writeback_control*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.orangefs_writepages*, align 8
  %9 = alloca %struct.orangefs_write_range*, align 8
  %10 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.orangefs_writepages*
  store %struct.orangefs_writepages* %12, %struct.orangefs_writepages** %8, align 8
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = call i32 @PagePrivate(%struct.page* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.page*, %struct.page** %5, align 8
  %18 = call i32 @unlock_page(%struct.page* %17)
  %19 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 (...) @BUG()
  store i32 0, i32* %4, align 4
  br label %157

21:                                               ; preds = %3
  %22 = load %struct.page*, %struct.page** %5, align 8
  %23 = call i64 @page_private(%struct.page* %22)
  %24 = inttoptr i64 %23 to %struct.orangefs_write_range*
  store %struct.orangefs_write_range* %24, %struct.orangefs_write_range** %9, align 8
  store i32 -1, i32* %10, align 4
  %25 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %8, align 8
  %26 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %21
  %30 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %9, align 8
  %31 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %8, align 8
  %34 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %9, align 8
  %36 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %8, align 8
  %39 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %9, align 8
  %41 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %8, align 8
  %44 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  %45 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %9, align 8
  %46 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %8, align 8
  %49 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  %50 = load %struct.page*, %struct.page** %5, align 8
  %51 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %8, align 8
  %52 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %51, i32 0, i32 4
  %53 = load %struct.page**, %struct.page*** %52, align 8
  %54 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %8, align 8
  %55 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = getelementptr inbounds %struct.page*, %struct.page** %53, i64 %56
  store %struct.page* %50, %struct.page** %58, align 8
  store i32 0, i32* %10, align 4
  br label %113

59:                                               ; preds = %21
  %60 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %8, align 8
  %61 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %9, align 8
  %64 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @uid_eq(i32 %62, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %59
  %69 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %8, align 8
  %70 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %9, align 8
  %73 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @gid_eq(i32 %71, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %68, %59
  %78 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %8, align 8
  %79 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %80 = call i32 @orangefs_writepages_work(%struct.orangefs_writepages* %78, %struct.writeback_control* %79)
  %81 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %8, align 8
  %82 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  store i32 -1, i32* %10, align 4
  br label %113

83:                                               ; preds = %68
  %84 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %8, align 8
  %85 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %8, align 8
  %88 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %9, align 8
  %92 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %90, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %83
  %96 = load %struct.orangefs_write_range*, %struct.orangefs_write_range** %9, align 8
  %97 = getelementptr inbounds %struct.orangefs_write_range, %struct.orangefs_write_range* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %8, align 8
  %100 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, %98
  store i64 %102, i64* %100, align 8
  %103 = load %struct.page*, %struct.page** %5, align 8
  %104 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %8, align 8
  %105 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %104, i32 0, i32 4
  %106 = load %struct.page**, %struct.page*** %105, align 8
  %107 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %8, align 8
  %108 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %108, align 8
  %111 = getelementptr inbounds %struct.page*, %struct.page** %106, i64 %109
  store %struct.page* %103, %struct.page** %111, align 8
  store i32 0, i32* %10, align 4
  br label %113

112:                                              ; preds = %83
  br label %113

113:                                              ; preds = %112, %95, %77, %29
  %114 = load i32, i32* %10, align 4
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %140

116:                                              ; preds = %113
  %117 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %8, align 8
  %118 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %8, align 8
  %123 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %124 = call i32 @orangefs_writepages_work(%struct.orangefs_writepages* %122, %struct.writeback_control* %123)
  %125 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %8, align 8
  %126 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %121, %116
  %128 = load %struct.page*, %struct.page** %5, align 8
  %129 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %130 = call i32 @orangefs_writepage_locked(%struct.page* %128, %struct.writeback_control* %129)
  store i32 %130, i32* %10, align 4
  %131 = load %struct.page*, %struct.page** %5, align 8
  %132 = getelementptr inbounds %struct.page, %struct.page* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @mapping_set_error(i32 %133, i32 %134)
  %136 = load %struct.page*, %struct.page** %5, align 8
  %137 = call i32 @unlock_page(%struct.page* %136)
  %138 = load %struct.page*, %struct.page** %5, align 8
  %139 = call i32 @end_page_writeback(%struct.page* %138)
  br label %155

140:                                              ; preds = %113
  %141 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %8, align 8
  %142 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %8, align 8
  %145 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %143, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %140
  %149 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %8, align 8
  %150 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %151 = call i32 @orangefs_writepages_work(%struct.orangefs_writepages* %149, %struct.writeback_control* %150)
  %152 = load %struct.orangefs_writepages*, %struct.orangefs_writepages** %8, align 8
  %153 = getelementptr inbounds %struct.orangefs_writepages, %struct.orangefs_writepages* %152, i32 0, i32 0
  store i64 0, i64* %153, align 8
  br label %154

154:                                              ; preds = %148, %140
  br label %155

155:                                              ; preds = %154, %127
  %156 = load i32, i32* %10, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %155, %16
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @page_private(%struct.page*) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i32 @orangefs_writepages_work(%struct.orangefs_writepages*, %struct.writeback_control*) #1

declare dso_local i32 @orangefs_writepage_locked(%struct.page*, %struct.writeback_control*) #1

declare dso_local i32 @mapping_set_error(i32, i32) #1

declare dso_local i32 @end_page_writeback(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
