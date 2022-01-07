; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_diSync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_diSync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dinomap_disk = type { %struct.TYPE_5__*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8* }
%struct.inomap = type { %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.metapage = type { i64 }
%struct.TYPE_8__ = type { %struct.inomap* }
%struct.TYPE_7__ = type { i32 }

@IMAPBLKNO = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"diSync: get_metapage failed!\00", align 1
@EIO = common dso_local global i32 0, align 4
@MAXAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diSync(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dinomap_disk*, align 8
  %5 = alloca %struct.inomap*, align 8
  %6 = alloca %struct.metapage*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.TYPE_8__* @JFS_IP(%struct.inode* %8)
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.inomap*, %struct.inomap** %10, align 8
  store %struct.inomap* %11, %struct.inomap** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = load i32, i32* @IMAPBLKNO, align 4
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_7__* @JFS_SBI(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %13, %19
  %21 = load i32, i32* @PSIZE, align 4
  %22 = call %struct.metapage* @get_metapage(%struct.inode* %12, i32 %20, i32 %21, i32 0)
  store %struct.metapage* %22, %struct.metapage** %6, align 8
  %23 = load %struct.metapage*, %struct.metapage** %6, align 8
  %24 = icmp eq %struct.metapage* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = call i32 @jfs_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %151

29:                                               ; preds = %1
  %30 = load %struct.metapage*, %struct.metapage** %6, align 8
  %31 = getelementptr inbounds %struct.metapage, %struct.metapage* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.dinomap_disk*
  store %struct.dinomap_disk* %33, %struct.dinomap_disk** %4, align 8
  %34 = load %struct.inomap*, %struct.inomap** %5, align 8
  %35 = getelementptr inbounds %struct.inomap, %struct.inomap* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @cpu_to_le32(i32 %36)
  %38 = load %struct.dinomap_disk*, %struct.dinomap_disk** %4, align 8
  %39 = getelementptr inbounds %struct.dinomap_disk, %struct.dinomap_disk* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  %40 = load %struct.inomap*, %struct.inomap** %5, align 8
  %41 = getelementptr inbounds %struct.inomap, %struct.inomap* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = load %struct.dinomap_disk*, %struct.dinomap_disk** %4, align 8
  %45 = getelementptr inbounds %struct.dinomap_disk, %struct.dinomap_disk* %44, i32 0, i32 5
  store i8* %43, i8** %45, align 8
  %46 = load %struct.inomap*, %struct.inomap** %5, align 8
  %47 = getelementptr inbounds %struct.inomap, %struct.inomap* %46, i32 0, i32 4
  %48 = call i32 @atomic_read(i32* %47)
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %struct.dinomap_disk*, %struct.dinomap_disk** %4, align 8
  %51 = getelementptr inbounds %struct.dinomap_disk, %struct.dinomap_disk* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load %struct.inomap*, %struct.inomap** %5, align 8
  %53 = getelementptr inbounds %struct.inomap, %struct.inomap* %52, i32 0, i32 3
  %54 = call i32 @atomic_read(i32* %53)
  %55 = call i8* @cpu_to_le32(i32 %54)
  %56 = load %struct.dinomap_disk*, %struct.dinomap_disk** %4, align 8
  %57 = getelementptr inbounds %struct.dinomap_disk, %struct.dinomap_disk* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.inomap*, %struct.inomap** %5, align 8
  %59 = getelementptr inbounds %struct.inomap, %struct.inomap* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @cpu_to_le32(i32 %60)
  %62 = load %struct.dinomap_disk*, %struct.dinomap_disk** %4, align 8
  %63 = getelementptr inbounds %struct.dinomap_disk, %struct.dinomap_disk* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load %struct.inomap*, %struct.inomap** %5, align 8
  %65 = getelementptr inbounds %struct.inomap, %struct.inomap* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @cpu_to_le32(i32 %66)
  %68 = load %struct.dinomap_disk*, %struct.dinomap_disk** %4, align 8
  %69 = getelementptr inbounds %struct.dinomap_disk, %struct.dinomap_disk* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %139, %29
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @MAXAG, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %142

74:                                               ; preds = %70
  %75 = load %struct.inomap*, %struct.inomap** %5, align 8
  %76 = getelementptr inbounds %struct.inomap, %struct.inomap* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @cpu_to_le32(i32 %82)
  %84 = load %struct.dinomap_disk*, %struct.dinomap_disk** %4, align 8
  %85 = getelementptr inbounds %struct.dinomap_disk, %struct.dinomap_disk* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 3
  store i8* %83, i8** %90, align 8
  %91 = load %struct.inomap*, %struct.inomap** %5, align 8
  %92 = getelementptr inbounds %struct.inomap, %struct.inomap* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @cpu_to_le32(i32 %98)
  %100 = load %struct.dinomap_disk*, %struct.dinomap_disk** %4, align 8
  %101 = getelementptr inbounds %struct.dinomap_disk, %struct.dinomap_disk* %100, i32 0, i32 0
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  store i8* %99, i8** %106, align 8
  %107 = load %struct.inomap*, %struct.inomap** %5, align 8
  %108 = getelementptr inbounds %struct.inomap, %struct.inomap* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @cpu_to_le32(i32 %114)
  %116 = load %struct.dinomap_disk*, %struct.dinomap_disk** %4, align 8
  %117 = getelementptr inbounds %struct.dinomap_disk, %struct.dinomap_disk* %116, i32 0, i32 0
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  store i8* %115, i8** %122, align 8
  %123 = load %struct.inomap*, %struct.inomap** %5, align 8
  %124 = getelementptr inbounds %struct.inomap, %struct.inomap* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @cpu_to_le32(i32 %130)
  %132 = load %struct.dinomap_disk*, %struct.dinomap_disk** %4, align 8
  %133 = getelementptr inbounds %struct.dinomap_disk, %struct.dinomap_disk* %132, i32 0, i32 0
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  store i8* %131, i8** %138, align 8
  br label %139

139:                                              ; preds = %74
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %70

142:                                              ; preds = %70
  %143 = load %struct.metapage*, %struct.metapage** %6, align 8
  %144 = call i32 @write_metapage(%struct.metapage* %143)
  %145 = load %struct.inode*, %struct.inode** %3, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @filemap_write_and_wait(i32 %147)
  %149 = load %struct.inode*, %struct.inode** %3, align 8
  %150 = call i32 @diWriteSpecial(%struct.inode* %149, i32 0)
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %142, %25
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.TYPE_8__* @JFS_IP(%struct.inode*) #1

declare dso_local %struct.metapage* @get_metapage(%struct.inode*, i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @JFS_SBI(i32) #1

declare dso_local i32 @jfs_err(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @write_metapage(%struct.metapage*) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @diWriteSpecial(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
