; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_init_journal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_init_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, i32, i32, %struct.gfs2_holder, %struct.TYPE_4__, %struct.gfs2_holder, i32, i32, %struct.gfs2_jdesc*, %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.gfs2_holder = type { i32 }
%struct.gfs2_jdesc = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"jindex\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"can't lookup journal index: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"can't read journal index: %d\0A\00", align 1
@EUSERS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"no journals!\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"can't mount journal #%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"there are only %u journals (0 - %u)\0A\00", align 1
@gfs2_journal_glops = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@LM_FLAG_NOEXP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"can't acquire journal glock: %d\0A\00", align 1
@LM_ST_SHARED = common dso_local global i32 0, align 4
@GL_EXACT = common dso_local global i32 0, align 4
@GL_NOCACHE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"can't acquire journal inode glock: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"my journal (%u) is bad: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"error recovering journal %u: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"error recovering my journal: %d\0A\00", align 1
@SDF_JOURNAL_CHECKED = common dso_local global i32 0, align 4
@gfs2_freeze_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i32)* @init_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_journal(%struct.gfs2_sbd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.gfs2_holder, align 4
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gfs2_jdesc*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %14 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %13, i32 0, i32 14
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.inode* @d_inode(i32 %15)
  store %struct.inode* %16, %struct.inode** %6, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %306

20:                                               ; preds = %2
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call i32 @gfs2_lookup_simple(%struct.inode* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %24 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %26 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %20
  %31 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %35 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %342

38:                                               ; preds = %20
  %39 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %40 = call i32 @gfs2_jindex_hold(%struct.gfs2_sbd* %39, %struct.gfs2_holder* %7)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %336

47:                                               ; preds = %38
  %48 = load i32, i32* @EUSERS, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  %50 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %51 = call i32 @gfs2_jindex_size(%struct.gfs2_sbd* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %55 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %328

56:                                               ; preds = %47
  %57 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %58 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %57, i32 0, i32 13
  %59 = call i32 @atomic_set(i32* %58, i32 0)
  %60 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %61 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %99

65:                                               ; preds = %56
  %66 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %67 = call i8* @gfs2_jdesc_find(%struct.gfs2_sbd* %66, i32 0)
  %68 = bitcast i8* %67 to %struct.gfs2_jdesc*
  %69 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %70 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %69, i32 0, i32 8
  store %struct.gfs2_jdesc* %68, %struct.gfs2_jdesc** %70, align 8
  %71 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %72 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %71, i32 0, i32 10
  %73 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %74 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %73, i32 0, i32 8
  %75 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %74, align 8
  %76 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @atomic_set(i32* %72, i32 %77)
  %79 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %80 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %79, i32 0, i32 12
  %81 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %82 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %81, i32 0, i32 8
  %83 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %82, align 8
  %84 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 2, %85
  %87 = sdiv i32 %86, 5
  %88 = call i32 @atomic_set(i32* %80, i32 %87)
  %89 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %90 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %89, i32 0, i32 11
  %91 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %92 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %91, i32 0, i32 8
  %93 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %92, align 8
  %94 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 4, %95
  %97 = sdiv i32 %96, 5
  %98 = call i32 @atomic_set(i32* %90, i32 %97)
  br label %222

99:                                               ; preds = %56
  %100 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %101 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %100, i32 0, i32 9
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %105 = call i32 @gfs2_jindex_size(%struct.gfs2_sbd* %104)
  %106 = icmp sge i32 %103, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %99
  %108 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %109 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %110 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %109, i32 0, i32 9
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  %114 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %115 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %116 = call i32 @gfs2_jindex_size(%struct.gfs2_sbd* %115)
  %117 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %118 = call i32 @gfs2_jindex_size(%struct.gfs2_sbd* %117)
  %119 = sub nsw i32 %118, 1
  %120 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %114, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %116, i32 %119)
  br label %328

121:                                              ; preds = %99
  %122 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %123 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %124 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %123, i32 0, i32 9
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i8* @gfs2_jdesc_find(%struct.gfs2_sbd* %122, i32 %126)
  %128 = bitcast i8* %127 to %struct.gfs2_jdesc*
  %129 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %130 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %129, i32 0, i32 8
  store %struct.gfs2_jdesc* %128, %struct.gfs2_jdesc** %130, align 8
  %131 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %132 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %133 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %132, i32 0, i32 9
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %137 = load i32, i32* @LM_FLAG_NOEXP, align 4
  %138 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %139 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %138, i32 0, i32 3
  %140 = call i32 @gfs2_glock_nq_num(%struct.gfs2_sbd* %131, i32 %135, i32* @gfs2_journal_glops, i32 %136, i32 %137, %struct.gfs2_holder* %139)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %121
  %144 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %145 = load i32, i32* %10, align 4
  %146 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %144, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %145)
  br label %328

147:                                              ; preds = %121
  %148 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %149 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %148, i32 0, i32 8
  %150 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %149, align 8
  %151 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call %struct.gfs2_inode* @GFS2_I(i32 %152)
  store %struct.gfs2_inode* %153, %struct.gfs2_inode** %8, align 8
  %154 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %155 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @LM_ST_SHARED, align 4
  %158 = load i32, i32* @LM_FLAG_NOEXP, align 4
  %159 = load i32, i32* @GL_EXACT, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @GL_NOCACHE, align 4
  %162 = or i32 %160, %161
  %163 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %164 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %163, i32 0, i32 5
  %165 = call i32 @gfs2_glock_nq_init(i32 %156, i32 %157, i32 %162, %struct.gfs2_holder* %164)
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %147
  %169 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %170 = load i32, i32* %10, align 4
  %171 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %169, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %170)
  br label %317

172:                                              ; preds = %147
  %173 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %174 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %173, i32 0, i32 8
  %175 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %174, align 8
  %176 = call i32 @gfs2_jdesc_check(%struct.gfs2_jdesc* %175)
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %172
  %180 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %181 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %182 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %181, i32 0, i32 8
  %183 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %182, align 8
  %184 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %10, align 4
  %187 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %180, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %185, i32 %186)
  br label %306

188:                                              ; preds = %172
  %189 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %190 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %189, i32 0, i32 10
  %191 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %192 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %191, i32 0, i32 8
  %193 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %192, align 8
  %194 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @atomic_set(i32* %190, i32 %195)
  %197 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %198 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %197, i32 0, i32 12
  %199 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %200 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %199, i32 0, i32 8
  %201 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %200, align 8
  %202 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = mul nsw i32 2, %203
  %205 = sdiv i32 %204, 5
  %206 = call i32 @atomic_set(i32* %198, i32 %205)
  %207 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %208 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %207, i32 0, i32 11
  %209 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %210 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %209, i32 0, i32 8
  %211 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %210, align 8
  %212 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = mul nsw i32 4, %213
  %215 = sdiv i32 %214, 5
  %216 = call i32 @atomic_set(i32* %208, i32 %215)
  %217 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %218 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %219 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %218, i32 0, i32 8
  %220 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %219, align 8
  %221 = call i32 @gfs2_map_journal_extents(%struct.gfs2_sbd* %217, %struct.gfs2_jdesc* %220)
  br label %222

222:                                              ; preds = %188, %65
  %223 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %224 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %225 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %224, i32 0, i32 10
  %226 = call i32 @atomic_read(i32* %225)
  %227 = call i32 @trace_gfs2_log_blocks(%struct.gfs2_sbd* %223, i32 %226)
  %228 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %229 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %228, i32 0, i32 9
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %275

233:                                              ; preds = %222
  store i32 0, i32* %11, align 4
  br label %234

234:                                              ; preds = %269, %233
  %235 = load i32, i32* %11, align 4
  %236 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %237 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp ult i32 %235, %238
  br i1 %239, label %240, label %272

240:                                              ; preds = %234
  %241 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %242 = load i32, i32* %11, align 4
  %243 = call i8* @gfs2_jdesc_find(%struct.gfs2_sbd* %241, i32 %242)
  %244 = bitcast i8* %243 to %struct.gfs2_jdesc*
  store %struct.gfs2_jdesc* %244, %struct.gfs2_jdesc** %12, align 8
  %245 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %246 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %245, i32 0, i32 4
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %258

250:                                              ; preds = %240
  %251 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %252 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %12, align 8
  %253 = call i32 @check_journal_clean(%struct.gfs2_sbd* %251, %struct.gfs2_jdesc* %252)
  store i32 %253, i32* %10, align 4
  %254 = load i32, i32* %10, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %250
  br label %306

257:                                              ; preds = %250
  br label %269

258:                                              ; preds = %240
  %259 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %12, align 8
  %260 = call i32 @gfs2_recover_journal(%struct.gfs2_jdesc* %259, i32 1)
  store i32 %260, i32* %10, align 4
  %261 = load i32, i32* %10, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %258
  %264 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %265 = load i32, i32* %11, align 4
  %266 = load i32, i32* %10, align 4
  %267 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %264, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %265, i32 %266)
  br label %306

268:                                              ; preds = %258
  br label %269

269:                                              ; preds = %268, %257
  %270 = load i32, i32* %11, align 4
  %271 = add i32 %270, 1
  store i32 %271, i32* %11, align 4
  br label %234

272:                                              ; preds = %234
  %273 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %274 = call i32 @gfs2_others_may_mount(%struct.gfs2_sbd* %273)
  br label %294

275:                                              ; preds = %222
  %276 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %277 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %276, i32 0, i32 4
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %293, label %281

281:                                              ; preds = %275
  %282 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %283 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %282, i32 0, i32 8
  %284 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %283, align 8
  %285 = call i32 @gfs2_recover_journal(%struct.gfs2_jdesc* %284, i32 1)
  store i32 %285, i32* %10, align 4
  %286 = load i32, i32* %10, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %281
  %289 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %290 = load i32, i32* %10, align 4
  %291 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %289, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %290)
  br label %306

292:                                              ; preds = %281
  br label %293

293:                                              ; preds = %292, %275
  br label %294

294:                                              ; preds = %293, %272
  %295 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %296 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %295, i32 0, i32 1
  store i32 1, i32* %296, align 4
  %297 = load i32, i32* @SDF_JOURNAL_CHECKED, align 4
  %298 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %299 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %298, i32 0, i32 7
  %300 = call i32 @set_bit(i32 %297, i32* %299)
  %301 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %7)
  store i32 0, i32* %9, align 4
  %302 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %303 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %302, i32 0, i32 6
  %304 = load i32, i32* @gfs2_freeze_func, align 4
  %305 = call i32 @INIT_WORK(i32* %303, i32 %304)
  store i32 0, i32* %3, align 4
  br label %342

306:                                              ; preds = %288, %263, %256, %179, %19
  %307 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %308 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %307, i32 0, i32 4
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %316, label %312

312:                                              ; preds = %306
  %313 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %314 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %313, i32 0, i32 5
  %315 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %314)
  br label %316

316:                                              ; preds = %312, %306
  br label %317

317:                                              ; preds = %316, %168
  %318 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %319 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %318, i32 0, i32 4
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %327, label %323

323:                                              ; preds = %317
  %324 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %325 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %324, i32 0, i32 3
  %326 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %325)
  br label %327

327:                                              ; preds = %323, %317
  br label %328

328:                                              ; preds = %327, %143, %107, %53
  %329 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %330 = call i32 @gfs2_jindex_free(%struct.gfs2_sbd* %329)
  %331 = load i32, i32* %9, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %335

333:                                              ; preds = %328
  %334 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %7)
  br label %335

335:                                              ; preds = %333, %328
  br label %336

336:                                              ; preds = %335, %43
  %337 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %338 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = call i32 @iput(i32 %339)
  %341 = load i32, i32* %10, align 4
  store i32 %341, i32* %3, align 4
  br label %342

342:                                              ; preds = %336, %294, %30
  %343 = load i32, i32* %3, align 4
  ret i32 %343
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @gfs2_lookup_simple(%struct.inode*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @gfs2_jindex_hold(%struct.gfs2_sbd*, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_jindex_size(%struct.gfs2_sbd*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i8* @gfs2_jdesc_find(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @gfs2_glock_nq_num(%struct.gfs2_sbd*, i32, i32*, i32, i32, %struct.gfs2_holder*) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_jdesc_check(%struct.gfs2_jdesc*) #1

declare dso_local i32 @gfs2_map_journal_extents(%struct.gfs2_sbd*, %struct.gfs2_jdesc*) #1

declare dso_local i32 @trace_gfs2_log_blocks(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @check_journal_clean(%struct.gfs2_sbd*, %struct.gfs2_jdesc*) #1

declare dso_local i32 @gfs2_recover_journal(%struct.gfs2_jdesc*, i32) #1

declare dso_local i32 @gfs2_others_may_mount(%struct.gfs2_sbd*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @gfs2_jindex_free(%struct.gfs2_sbd*) #1

declare dso_local i32 @iput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
