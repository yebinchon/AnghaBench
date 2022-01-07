; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dmap.c_dbSync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dmap.c_dbSync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dbmap_disk = type { i32, i8*, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.bmap = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.metapage = type { i64 }
%struct.TYPE_2__ = type { i32, %struct.bmap* }

@BMAPBLKNO = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"dbSync: read_metapage failed!\00", align 1
@EIO = common dso_local global i32 0, align 4
@MAXAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbSync(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dbmap_disk*, align 8
  %5 = alloca %struct.bmap*, align 8
  %6 = alloca %struct.metapage*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_2__* @JFS_SBI(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.bmap*, %struct.bmap** %12, align 8
  store %struct.bmap* %13, %struct.bmap** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = load i32, i32* @BMAPBLKNO, align 4
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_2__* @JFS_SBI(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 %15, %21
  %23 = load i32, i32* @PSIZE, align 4
  %24 = call %struct.metapage* @read_metapage(%struct.inode* %14, i32 %22, i32 %23, i32 0)
  store %struct.metapage* %24, %struct.metapage** %6, align 8
  %25 = load %struct.metapage*, %struct.metapage** %6, align 8
  %26 = icmp eq %struct.metapage* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = call i32 @jfs_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %150

31:                                               ; preds = %1
  %32 = load %struct.metapage*, %struct.metapage** %6, align 8
  %33 = getelementptr inbounds %struct.metapage, %struct.metapage* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.dbmap_disk*
  store %struct.dbmap_disk* %35, %struct.dbmap_disk** %4, align 8
  %36 = load %struct.bmap*, %struct.bmap** %5, align 8
  %37 = getelementptr inbounds %struct.bmap, %struct.bmap* %36, i32 0, i32 14
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @cpu_to_le64(i32 %38)
  %40 = load %struct.dbmap_disk*, %struct.dbmap_disk** %4, align 8
  %41 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %40, i32 0, i32 14
  store i8* %39, i8** %41, align 8
  %42 = load %struct.bmap*, %struct.bmap** %5, align 8
  %43 = getelementptr inbounds %struct.bmap, %struct.bmap* %42, i32 0, i32 13
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @cpu_to_le64(i32 %44)
  %46 = load %struct.dbmap_disk*, %struct.dbmap_disk** %4, align 8
  %47 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %46, i32 0, i32 13
  store i8* %45, i8** %47, align 8
  %48 = load %struct.bmap*, %struct.bmap** %5, align 8
  %49 = getelementptr inbounds %struct.bmap, %struct.bmap* %48, i32 0, i32 12
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @cpu_to_le32(i32 %50)
  %52 = load %struct.dbmap_disk*, %struct.dbmap_disk** %4, align 8
  %53 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %52, i32 0, i32 12
  store i8* %51, i8** %53, align 8
  %54 = load %struct.bmap*, %struct.bmap** %5, align 8
  %55 = getelementptr inbounds %struct.bmap, %struct.bmap* %54, i32 0, i32 11
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @cpu_to_le32(i32 %56)
  %58 = load %struct.dbmap_disk*, %struct.dbmap_disk** %4, align 8
  %59 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %58, i32 0, i32 11
  store i8* %57, i8** %59, align 8
  %60 = load %struct.bmap*, %struct.bmap** %5, align 8
  %61 = getelementptr inbounds %struct.bmap, %struct.bmap* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @cpu_to_le32(i32 %62)
  %64 = load %struct.dbmap_disk*, %struct.dbmap_disk** %4, align 8
  %65 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %64, i32 0, i32 10
  store i8* %63, i8** %65, align 8
  %66 = load %struct.bmap*, %struct.bmap** %5, align 8
  %67 = getelementptr inbounds %struct.bmap, %struct.bmap* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @cpu_to_le32(i32 %68)
  %70 = load %struct.dbmap_disk*, %struct.dbmap_disk** %4, align 8
  %71 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %70, i32 0, i32 9
  store i8* %69, i8** %71, align 8
  %72 = load %struct.bmap*, %struct.bmap** %5, align 8
  %73 = getelementptr inbounds %struct.bmap, %struct.bmap* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = load %struct.dbmap_disk*, %struct.dbmap_disk** %4, align 8
  %77 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %76, i32 0, i32 8
  store i8* %75, i8** %77, align 8
  %78 = load %struct.bmap*, %struct.bmap** %5, align 8
  %79 = getelementptr inbounds %struct.bmap, %struct.bmap* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.dbmap_disk*, %struct.dbmap_disk** %4, align 8
  %83 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %82, i32 0, i32 7
  store i8* %81, i8** %83, align 8
  %84 = load %struct.bmap*, %struct.bmap** %5, align 8
  %85 = getelementptr inbounds %struct.bmap, %struct.bmap* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @cpu_to_le32(i32 %86)
  %88 = load %struct.dbmap_disk*, %struct.dbmap_disk** %4, align 8
  %89 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %88, i32 0, i32 6
  store i8* %87, i8** %89, align 8
  %90 = load %struct.bmap*, %struct.bmap** %5, align 8
  %91 = getelementptr inbounds %struct.bmap, %struct.bmap* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = call i8* @cpu_to_le32(i32 %92)
  %94 = load %struct.dbmap_disk*, %struct.dbmap_disk** %4, align 8
  %95 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %94, i32 0, i32 5
  store i8* %93, i8** %95, align 8
  %96 = load %struct.bmap*, %struct.bmap** %5, align 8
  %97 = getelementptr inbounds %struct.bmap, %struct.bmap* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @cpu_to_le32(i32 %98)
  %100 = load %struct.dbmap_disk*, %struct.dbmap_disk** %4, align 8
  %101 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %100, i32 0, i32 4
  store i8* %99, i8** %101, align 8
  %102 = load %struct.bmap*, %struct.bmap** %5, align 8
  %103 = getelementptr inbounds %struct.bmap, %struct.bmap* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i8* @cpu_to_le32(i32 %104)
  %106 = load %struct.dbmap_disk*, %struct.dbmap_disk** %4, align 8
  %107 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %106, i32 0, i32 3
  store i8* %105, i8** %107, align 8
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %127, %31
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @MAXAG, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %108
  %113 = load %struct.bmap*, %struct.bmap** %5, align 8
  %114 = getelementptr inbounds %struct.bmap, %struct.bmap* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @cpu_to_le64(i32 %119)
  %121 = load %struct.dbmap_disk*, %struct.dbmap_disk** %4, align 8
  %122 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %121, i32 0, i32 2
  %123 = load i8**, i8*** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  store i8* %120, i8** %126, align 8
  br label %127

127:                                              ; preds = %112
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %108

130:                                              ; preds = %108
  %131 = load %struct.bmap*, %struct.bmap** %5, align 8
  %132 = getelementptr inbounds %struct.bmap, %struct.bmap* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @cpu_to_le64(i32 %133)
  %135 = load %struct.dbmap_disk*, %struct.dbmap_disk** %4, align 8
  %136 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  %137 = load %struct.bmap*, %struct.bmap** %5, align 8
  %138 = getelementptr inbounds %struct.bmap, %struct.bmap* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.dbmap_disk*, %struct.dbmap_disk** %4, align 8
  %141 = getelementptr inbounds %struct.dbmap_disk, %struct.dbmap_disk* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.metapage*, %struct.metapage** %6, align 8
  %143 = call i32 @write_metapage(%struct.metapage* %142)
  %144 = load %struct.inode*, %struct.inode** %3, align 8
  %145 = getelementptr inbounds %struct.inode, %struct.inode* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @filemap_write_and_wait(i32 %146)
  %148 = load %struct.inode*, %struct.inode** %3, align 8
  %149 = call i32 @diWriteSpecial(%struct.inode* %148, i32 0)
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %130, %27
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.TYPE_2__* @JFS_SBI(i32) #1

declare dso_local %struct.metapage* @read_metapage(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @jfs_err(i8*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @write_metapage(%struct.metapage*) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @diWriteSpecial(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
