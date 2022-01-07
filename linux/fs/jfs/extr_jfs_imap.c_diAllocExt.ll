; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_diAllocExt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_diAllocExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inomap = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }
%struct.metapage = type { i64 }
%struct.iag = type { i32*, i64, i64, i32 }

@RDWRLOCK_IMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"error reading iag\0A\00", align 1
@SMAPSZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"free ext summary map not found\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EXTSPERSUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"free extent not found\0A\00", align 1
@L2EXTSPERSUM = common dso_local global i32 0, align 4
@EXTSPERIAG = common dso_local global i32 0, align 4
@L2INOSPEREXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inomap*, i32, %struct.inode*)* @diAllocExt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diAllocExt(%struct.inomap* %0, i32 %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inomap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.metapage*, align 8
  %14 = alloca %struct.iag*, align 8
  store %struct.inomap* %0, %struct.inomap** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.inode* %2, %struct.inode** %7, align 8
  %15 = load %struct.inomap*, %struct.inomap** %5, align 8
  %16 = getelementptr inbounds %struct.inomap, %struct.inomap* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %3
  %25 = load %struct.inomap*, %struct.inomap** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @diNewIAG(%struct.inomap* %25, i32* %9, i32 %26, %struct.metapage** %13)
  store i32 %27, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %4, align 4
  br label %180

31:                                               ; preds = %24
  %32 = load %struct.metapage*, %struct.metapage** %13, align 8
  %33 = getelementptr inbounds %struct.metapage, %struct.metapage* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.iag*
  store %struct.iag* %35, %struct.iag** %14, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.inomap*, %struct.inomap** %5, align 8
  %38 = getelementptr inbounds %struct.inomap, %struct.inomap* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @AGTOBLK(i32 %36, i32 %39)
  %41 = call i32 @cpu_to_le64(i32 %40)
  %42 = load %struct.iag*, %struct.iag** %14, align 8
  %43 = getelementptr inbounds %struct.iag, %struct.iag* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  br label %69

44:                                               ; preds = %3
  %45 = load %struct.inomap*, %struct.inomap** %5, align 8
  %46 = getelementptr inbounds %struct.inomap, %struct.inomap* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RDWRLOCK_IMAP, align 4
  %49 = call i32 @IREAD_LOCK(i32 %47, i32 %48)
  %50 = load %struct.inomap*, %struct.inomap** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @diIAGRead(%struct.inomap* %50, i32 %51, %struct.metapage** %13)
  store i32 %52, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %44
  %55 = load %struct.inomap*, %struct.inomap** %5, align 8
  %56 = getelementptr inbounds %struct.inomap, %struct.inomap* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @IREAD_UNLOCK(i32 %57)
  %59 = load %struct.inode*, %struct.inode** %7, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @jfs_error(i32 %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %4, align 4
  br label %180

64:                                               ; preds = %44
  %65 = load %struct.metapage*, %struct.metapage** %13, align 8
  %66 = getelementptr inbounds %struct.metapage, %struct.metapage* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.iag*
  store %struct.iag* %68, %struct.iag** %14, align 8
  br label %69

69:                                               ; preds = %64, %31
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %99, %69
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @SMAPSZ, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load %struct.metapage*, %struct.metapage** %13, align 8
  %76 = call i32 @release_metapage(%struct.metapage* %75)
  %77 = load %struct.inomap*, %struct.inomap** %5, align 8
  %78 = getelementptr inbounds %struct.inomap, %struct.inomap* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @IREAD_UNLOCK(i32 %79)
  %81 = load %struct.inode*, %struct.inode** %7, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @jfs_error(i32 %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %180

87:                                               ; preds = %70
  %88 = load %struct.iag*, %struct.iag** %14, align 8
  %89 = getelementptr inbounds %struct.iag, %struct.iag* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = xor i32 %94, -1
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %102

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %70

102:                                              ; preds = %97
  %103 = load %struct.iag*, %struct.iag** %14, align 8
  %104 = getelementptr inbounds %struct.iag, %struct.iag* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @le32_to_cpu(i32 %109)
  %111 = call i32 @diFindFree(i32 %110, i32 0)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @EXTSPERSUM, align 4
  %114 = icmp sge i32 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %102
  %116 = load %struct.metapage*, %struct.metapage** %13, align 8
  %117 = call i32 @release_metapage(%struct.metapage* %116)
  %118 = load %struct.inomap*, %struct.inomap** %5, align 8
  %119 = getelementptr inbounds %struct.inomap, %struct.inomap* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @IREAD_UNLOCK(i32 %120)
  %122 = load %struct.inode*, %struct.inode** %7, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @jfs_error(i32 %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %126 = load i32, i32* @EIO, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %4, align 4
  br label %180

128:                                              ; preds = %102
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @L2EXTSPERSUM, align 4
  %131 = shl i32 %129, %130
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %131, %132
  store i32 %133, i32* %11, align 4
  %134 = load %struct.inomap*, %struct.inomap** %5, align 8
  %135 = load %struct.iag*, %struct.iag** %14, align 8
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @diNewExt(%struct.inomap* %134, %struct.iag* %135, i32 %136)
  store i32 %137, i32* %12, align 4
  %138 = load %struct.inomap*, %struct.inomap** %5, align 8
  %139 = getelementptr inbounds %struct.inomap, %struct.inomap* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @IREAD_UNLOCK(i32 %140)
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %169

144:                                              ; preds = %128
  %145 = load %struct.iag*, %struct.iag** %14, align 8
  %146 = getelementptr inbounds %struct.iag, %struct.iag* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* @EXTSPERIAG, align 4
  %149 = call i64 @cpu_to_le32(i32 %148)
  %150 = icmp eq i64 %147, %149
  br i1 %150, label %151, label %165

151:                                              ; preds = %144
  %152 = load %struct.inomap*, %struct.inomap** %5, align 8
  %153 = call i32 @IAGFREE_LOCK(%struct.inomap* %152)
  %154 = load %struct.inomap*, %struct.inomap** %5, align 8
  %155 = getelementptr inbounds %struct.inomap, %struct.inomap* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @cpu_to_le32(i32 %156)
  %158 = load %struct.iag*, %struct.iag** %14, align 8
  %159 = getelementptr inbounds %struct.iag, %struct.iag* %158, i32 0, i32 2
  store i64 %157, i64* %159, align 8
  %160 = load i32, i32* %9, align 4
  %161 = load %struct.inomap*, %struct.inomap** %5, align 8
  %162 = getelementptr inbounds %struct.inomap, %struct.inomap* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load %struct.inomap*, %struct.inomap** %5, align 8
  %164 = call i32 @IAGFREE_UNLOCK(%struct.inomap* %163)
  br label %165

165:                                              ; preds = %151, %144
  %166 = load %struct.metapage*, %struct.metapage** %13, align 8
  %167 = call i32 @write_metapage(%struct.metapage* %166)
  %168 = load i32, i32* %12, align 4
  store i32 %168, i32* %4, align 4
  br label %180

169:                                              ; preds = %128
  %170 = load %struct.inode*, %struct.inode** %7, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @L2INOSPEREXT, align 4
  %174 = shl i32 %172, %173
  %175 = load i32, i32* %11, align 4
  %176 = load %struct.iag*, %struct.iag** %14, align 8
  %177 = call i32 @diInitInode(%struct.inode* %170, i32 %171, i32 %174, i32 %175, %struct.iag* %176)
  %178 = load %struct.metapage*, %struct.metapage** %13, align 8
  %179 = call i32 @write_metapage(%struct.metapage* %178)
  store i32 0, i32* %4, align 4
  br label %180

180:                                              ; preds = %169, %165, %115, %74, %54, %29
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @diNewIAG(%struct.inomap*, i32*, i32, %struct.metapage**) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @AGTOBLK(i32, i32) #1

declare dso_local i32 @IREAD_LOCK(i32, i32) #1

declare dso_local i32 @diIAGRead(%struct.inomap*, i32, %struct.metapage**) #1

declare dso_local i32 @IREAD_UNLOCK(i32) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

declare dso_local i32 @diFindFree(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @diNewExt(%struct.inomap*, %struct.iag*, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @IAGFREE_LOCK(%struct.inomap*) #1

declare dso_local i32 @IAGFREE_UNLOCK(%struct.inomap*) #1

declare dso_local i32 @write_metapage(%struct.metapage*) #1

declare dso_local i32 @diInitInode(%struct.inode*, i32, i32, i32, %struct.iag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
