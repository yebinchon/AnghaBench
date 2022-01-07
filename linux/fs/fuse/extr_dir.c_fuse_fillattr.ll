; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_fillattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_fillattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_12__*, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.fuse_attr = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kstat = type { i32, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.fuse_conn = type { i32, i64 }

@S_IFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.fuse_attr*, %struct.kstat*)* @fuse_fillattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_fillattr(%struct.inode* %0, %struct.fuse_attr* %1, %struct.kstat* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.fuse_attr*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fuse_conn*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.fuse_attr* %1, %struct.fuse_attr** %5, align 8
  store %struct.kstat* %2, %struct.kstat** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %9)
  store %struct.fuse_conn* %10, %struct.fuse_conn** %8, align 8
  %11 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %12 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %3
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @S_ISREG(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %15
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call i32 @i_size_read(%struct.inode* %22)
  %24 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %25 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %31 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 4
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %37 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %43 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %49 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %21, %15, %3
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.kstat*, %struct.kstat** %6, align 8
  %57 = getelementptr inbounds %struct.kstat, %struct.kstat* %56, i32 0, i32 12
  store i32 %55, i32* %57, align 4
  %58 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %59 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %58, i32 0, i32 13
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.kstat*, %struct.kstat** %6, align 8
  %62 = getelementptr inbounds %struct.kstat, %struct.kstat* %61, i32 0, i32 11
  store i32 %60, i32* %62, align 4
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @S_IFMT, align 4
  %67 = and i32 %65, %66
  %68 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %69 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, 4095
  %72 = or i32 %67, %71
  %73 = load %struct.kstat*, %struct.kstat** %6, align 8
  %74 = getelementptr inbounds %struct.kstat, %struct.kstat* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %76 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %75, i32 0, i32 12
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.kstat*, %struct.kstat** %6, align 8
  %79 = getelementptr inbounds %struct.kstat, %struct.kstat* %78, i32 0, i32 10
  store i32 %77, i32* %79, align 4
  %80 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %81 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %84 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %83, i32 0, i32 11
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @make_kuid(i32 %82, i32 %85)
  %87 = load %struct.kstat*, %struct.kstat** %6, align 8
  %88 = getelementptr inbounds %struct.kstat, %struct.kstat* %87, i32 0, i32 9
  store i32 %86, i32* %88, align 4
  %89 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %90 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %93 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %92, i32 0, i32 10
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @make_kgid(i32 %91, i32 %94)
  %96 = load %struct.kstat*, %struct.kstat** %6, align 8
  %97 = getelementptr inbounds %struct.kstat, %struct.kstat* %96, i32 0, i32 8
  store i32 %95, i32* %97, align 4
  %98 = load %struct.inode*, %struct.inode** %4, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.kstat*, %struct.kstat** %6, align 8
  %102 = getelementptr inbounds %struct.kstat, %struct.kstat* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 4
  %103 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %104 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.kstat*, %struct.kstat** %6, align 8
  %107 = getelementptr inbounds %struct.kstat, %struct.kstat* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  %109 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %110 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.kstat*, %struct.kstat** %6, align 8
  %113 = getelementptr inbounds %struct.kstat, %struct.kstat* %112, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 4
  %115 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %116 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.kstat*, %struct.kstat** %6, align 8
  %119 = getelementptr inbounds %struct.kstat, %struct.kstat* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  %121 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %122 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.kstat*, %struct.kstat** %6, align 8
  %125 = getelementptr inbounds %struct.kstat, %struct.kstat* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 4
  %127 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %128 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.kstat*, %struct.kstat** %6, align 8
  %131 = getelementptr inbounds %struct.kstat, %struct.kstat* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  %133 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %134 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.kstat*, %struct.kstat** %6, align 8
  %137 = getelementptr inbounds %struct.kstat, %struct.kstat* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 4
  %139 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %140 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.kstat*, %struct.kstat** %6, align 8
  %143 = getelementptr inbounds %struct.kstat, %struct.kstat* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 4
  %144 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %145 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.kstat*, %struct.kstat** %6, align 8
  %148 = getelementptr inbounds %struct.kstat, %struct.kstat* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 4
  %149 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %150 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %50
  %154 = load %struct.fuse_attr*, %struct.fuse_attr** %5, align 8
  %155 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @ilog2(i64 %156)
  store i32 %157, i32* %7, align 4
  br label %164

158:                                              ; preds = %50
  %159 = load %struct.inode*, %struct.inode** %4, align 8
  %160 = getelementptr inbounds %struct.inode, %struct.inode* %159, i32 0, i32 1
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %158, %153
  %165 = load i32, i32* %7, align 4
  %166 = shl i32 1, %165
  %167 = load %struct.kstat*, %struct.kstat** %6, align 8
  %168 = getelementptr inbounds %struct.kstat, %struct.kstat* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  ret void
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i32 @make_kgid(i32, i32) #1

declare dso_local i32 @ilog2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
