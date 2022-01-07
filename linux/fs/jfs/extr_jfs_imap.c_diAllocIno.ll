; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_diAllocIno.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_diAllocIno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inomap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }
%struct.metapage = type { i64 }
%struct.iag = type { i32*, i32*, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@RDWRLOCK_IMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"nfreeinos = 0, but iag on freelist\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SMAPSZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"free inode not found in summary map\0A\00", align 1
@EXTSPERSUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"no free extent found\0A\00", align 1
@L2EXTSPERSUM = common dso_local global i32 0, align 4
@INOSPEREXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"free inode not found\0A\00", align 1
@L2INOSPEREXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inomap*, i32, %struct.inode*)* @diAllocIno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diAllocIno(%struct.inomap* %0, i32 %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inomap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.metapage*, align 8
  %15 = alloca %struct.iag*, align 8
  store %struct.inomap* %0, %struct.inomap** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.inode* %2, %struct.inode** %7, align 8
  %16 = load %struct.inomap*, %struct.inomap** %5, align 8
  %17 = getelementptr inbounds %struct.inomap, %struct.inomap* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOSPC, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %185

28:                                               ; preds = %3
  %29 = load %struct.inomap*, %struct.inomap** %5, align 8
  %30 = getelementptr inbounds %struct.inomap, %struct.inomap* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @RDWRLOCK_IMAP, align 4
  %33 = call i32 @IREAD_LOCK(i32 %31, i32 %32)
  %34 = load %struct.inomap*, %struct.inomap** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @diIAGRead(%struct.inomap* %34, i32 %35, %struct.metapage** %14)
  store i32 %36, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load %struct.inomap*, %struct.inomap** %5, align 8
  %40 = getelementptr inbounds %struct.inomap, %struct.inomap* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @IREAD_UNLOCK(i32 %41)
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %185

44:                                               ; preds = %28
  %45 = load %struct.metapage*, %struct.metapage** %14, align 8
  %46 = getelementptr inbounds %struct.metapage, %struct.metapage* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.iag*
  store %struct.iag* %48, %struct.iag** %15, align 8
  %49 = load %struct.iag*, %struct.iag** %15, align 8
  %50 = getelementptr inbounds %struct.iag, %struct.iag* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %44
  %54 = load %struct.inomap*, %struct.inomap** %5, align 8
  %55 = getelementptr inbounds %struct.inomap, %struct.inomap* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @IREAD_UNLOCK(i32 %56)
  %58 = load %struct.metapage*, %struct.metapage** %14, align 8
  %59 = call i32 @release_metapage(%struct.metapage* %58)
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @jfs_error(i32 %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %185

66:                                               ; preds = %44
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %96, %66
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @SMAPSZ, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = load %struct.inomap*, %struct.inomap** %5, align 8
  %73 = getelementptr inbounds %struct.inomap, %struct.inomap* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @IREAD_UNLOCK(i32 %74)
  %76 = load %struct.metapage*, %struct.metapage** %14, align 8
  %77 = call i32 @release_metapage(%struct.metapage* %76)
  %78 = load %struct.inode*, %struct.inode** %7, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @jfs_error(i32 %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %185

84:                                               ; preds = %67
  %85 = load %struct.iag*, %struct.iag** %15, align 8
  %86 = getelementptr inbounds %struct.iag, %struct.iag* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %91, -1
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %99

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  br label %67

99:                                               ; preds = %94
  %100 = load %struct.iag*, %struct.iag** %15, align 8
  %101 = getelementptr inbounds %struct.iag, %struct.iag* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @le32_to_cpu(i32 %106)
  %108 = call i32 @diFindFree(i32 %107, i32 0)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @EXTSPERSUM, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %99
  %113 = load %struct.inomap*, %struct.inomap** %5, align 8
  %114 = getelementptr inbounds %struct.inomap, %struct.inomap* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @IREAD_UNLOCK(i32 %115)
  %117 = load %struct.metapage*, %struct.metapage** %14, align 8
  %118 = call i32 @release_metapage(%struct.metapage* %117)
  %119 = load %struct.inode*, %struct.inode** %7, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @jfs_error(i32 %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i32, i32* @EIO, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  br label %185

125:                                              ; preds = %99
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* @L2EXTSPERSUM, align 4
  %128 = shl i32 %126, %127
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %128, %129
  store i32 %130, i32* %12, align 4
  %131 = load %struct.iag*, %struct.iag** %15, align 8
  %132 = getelementptr inbounds %struct.iag, %struct.iag* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @le32_to_cpu(i32 %137)
  %139 = call i32 @diFindFree(i32 %138, i32 0)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @INOSPEREXT, align 4
  %142 = icmp sge i32 %140, %141
  br i1 %142, label %143, label %156

143:                                              ; preds = %125
  %144 = load %struct.inomap*, %struct.inomap** %5, align 8
  %145 = getelementptr inbounds %struct.inomap, %struct.inomap* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @IREAD_UNLOCK(i32 %146)
  %148 = load %struct.metapage*, %struct.metapage** %14, align 8
  %149 = call i32 @release_metapage(%struct.metapage* %148)
  %150 = load %struct.inode*, %struct.inode** %7, align 8
  %151 = getelementptr inbounds %struct.inode, %struct.inode* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @jfs_error(i32 %152, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %154 = load i32, i32* @EIO, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %4, align 4
  br label %185

156:                                              ; preds = %125
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* @L2INOSPEREXT, align 4
  %159 = shl i32 %157, %158
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %159, %160
  store i32 %161, i32* %9, align 4
  %162 = load %struct.inomap*, %struct.inomap** %5, align 8
  %163 = load %struct.iag*, %struct.iag** %15, align 8
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @diAllocBit(%struct.inomap* %162, %struct.iag* %163, i32 %164)
  store i32 %165, i32* %10, align 4
  %166 = load %struct.inomap*, %struct.inomap** %5, align 8
  %167 = getelementptr inbounds %struct.inomap, %struct.inomap* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @IREAD_UNLOCK(i32 %168)
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %156
  %173 = load %struct.metapage*, %struct.metapage** %14, align 8
  %174 = call i32 @release_metapage(%struct.metapage* %173)
  %175 = load i32, i32* %10, align 4
  store i32 %175, i32* %4, align 4
  br label %185

176:                                              ; preds = %156
  %177 = load %struct.inode*, %struct.inode** %7, align 8
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %12, align 4
  %181 = load %struct.iag*, %struct.iag** %15, align 8
  %182 = call i32 @diInitInode(%struct.inode* %177, i32 %178, i32 %179, i32 %180, %struct.iag* %181)
  %183 = load %struct.metapage*, %struct.metapage** %14, align 8
  %184 = call i32 @write_metapage(%struct.metapage* %183)
  store i32 0, i32* %4, align 4
  br label %185

185:                                              ; preds = %176, %172, %143, %112, %71, %53, %38, %25
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local i32 @IREAD_LOCK(i32, i32) #1

declare dso_local i32 @diIAGRead(%struct.inomap*, i32, %struct.metapage**) #1

declare dso_local i32 @IREAD_UNLOCK(i32) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local i32 @diFindFree(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @diAllocBit(%struct.inomap*, %struct.iag*, i32) #1

declare dso_local i32 @diInitInode(%struct.inode*, i32, i32, i32, %struct.iag*) #1

declare dso_local i32 @write_metapage(%struct.metapage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
