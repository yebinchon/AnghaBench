; ModuleID = '/home/carl/AnghaBench/linux/samples/vfs/extr_test-statx.c_dump_statx.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfs/extr_test-statx.c_dump_statx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"results=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@STATX_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c" Size: %-15llu\00", align 1
@STATX_BLOCKS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c" Blocks: %-10llu\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c" IO Block: %-6llu\00", align 1
@STATX_TYPE = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"  FIFO\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"  character special file\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"  directory\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"  block special file\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"  regular file\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"  symbolic link\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"  socket\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c" unknown type (%o)\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c" no type\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"%02x:%02x\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Device: %-15s\00", align 1
@STATX_INO = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c" Inode: %-11llu\00", align 1
@STATX_NLINK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [13 x i8] c" Links: %-5u\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c" Device type: %u,%u\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@STATX_MODE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [38 x i8] c"Access: (%04o/%c%c%c%c%c%c%c%c%c%c)  \00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@STATX_UID = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [12 x i8] c"Uid: %5d   \00", align 1
@STATX_GID = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [10 x i8] c"Gid: %5d\0A\00", align 1
@STATX_ATIME = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [9 x i8] c"Access: \00", align 1
@STATX_MTIME = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"Modify: \00", align 1
@STATX_CTIME = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [9 x i8] c"Change: \00", align 1
@STATX_BTIME = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [9 x i8] c" Birth: \00", align 1
@dump_statx.attr_representation = internal global [65 x i8] c"???????????????????????????????????????????????????me????dai?c??\00", align 16
@.str.27 = private unnamed_addr constant [22 x i8] c"Attributes: %016llx (\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.statx*)* @dump_statx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_statx(%struct.statx* %0) #0 {
  %2 = alloca %struct.statx*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.statx* %0, %struct.statx** %2, align 8
  store i8 63, i8* %4, align 1
  %10 = load %struct.statx*, %struct.statx** %2, align 8
  %11 = getelementptr inbounds %struct.statx, %struct.statx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.statx*, %struct.statx** %2, align 8
  %16 = getelementptr inbounds %struct.statx, %struct.statx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @STATX_SIZE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.statx*, %struct.statx** %2, align 8
  %23 = getelementptr inbounds %struct.statx, %struct.statx* %22, i32 0, i32 18
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.statx*, %struct.statx** %2, align 8
  %28 = getelementptr inbounds %struct.statx, %struct.statx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @STATX_BLOCKS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.statx*, %struct.statx** %2, align 8
  %35 = getelementptr inbounds %struct.statx, %struct.statx* %34, i32 0, i32 17
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %33, %26
  %39 = load %struct.statx*, %struct.statx** %2, align 8
  %40 = getelementptr inbounds %struct.statx, %struct.statx* %39, i32 0, i32 16
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64 %41)
  %43 = load %struct.statx*, %struct.statx** %2, align 8
  %44 = getelementptr inbounds %struct.statx, %struct.statx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @STATX_TYPE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %38
  %50 = load %struct.statx*, %struct.statx** %2, align 8
  %51 = getelementptr inbounds %struct.statx, %struct.statx* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @S_IFMT, align 4
  %54 = and i32 %52, %53
  switch i32 %54, label %69 [
    i32 131, label %55
    i32 133, label %57
    i32 132, label %59
    i32 134, label %61
    i32 129, label %63
    i32 130, label %65
    i32 128, label %67
  ]

55:                                               ; preds = %49
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i8 112, i8* %4, align 1
  br label %76

57:                                               ; preds = %49
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  store i8 99, i8* %4, align 1
  br label %76

59:                                               ; preds = %49
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i8 100, i8* %4, align 1
  br label %76

61:                                               ; preds = %49
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  store i8 98, i8* %4, align 1
  br label %76

63:                                               ; preds = %49
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  store i8 45, i8* %4, align 1
  br label %76

65:                                               ; preds = %49
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  store i8 108, i8* %4, align 1
  br label %76

67:                                               ; preds = %49
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  store i8 115, i8* %4, align 1
  br label %76

69:                                               ; preds = %49
  %70 = load %struct.statx*, %struct.statx** %2, align 8
  %71 = getelementptr inbounds %struct.statx, %struct.statx* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @S_IFMT, align 4
  %74 = and i32 %72, %73
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %69, %67, %65, %63, %61, %59, %57, %55
  br label %79

77:                                               ; preds = %38
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %76
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %81 = load %struct.statx*, %struct.statx** %2, align 8
  %82 = getelementptr inbounds %struct.statx, %struct.statx* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.statx*, %struct.statx** %2, align 8
  %85 = getelementptr inbounds %struct.statx, %struct.statx* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @sprintf(i8* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %83, i32 %86)
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %88)
  %90 = load %struct.statx*, %struct.statx** %2, align 8
  %91 = getelementptr inbounds %struct.statx, %struct.statx* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @STATX_INO, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %79
  %97 = load %struct.statx*, %struct.statx** %2, align 8
  %98 = getelementptr inbounds %struct.statx, %struct.statx* %97, i32 0, i32 15
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i64 %99)
  br label %101

101:                                              ; preds = %96, %79
  %102 = load %struct.statx*, %struct.statx** %2, align 8
  %103 = getelementptr inbounds %struct.statx, %struct.statx* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @STATX_NLINK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.statx*, %struct.statx** %2, align 8
  %110 = getelementptr inbounds %struct.statx, %struct.statx* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %108, %101
  %114 = load %struct.statx*, %struct.statx** %2, align 8
  %115 = getelementptr inbounds %struct.statx, %struct.statx* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @STATX_TYPE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %113
  %121 = load %struct.statx*, %struct.statx** %2, align 8
  %122 = getelementptr inbounds %struct.statx, %struct.statx* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @S_IFMT, align 4
  %125 = and i32 %123, %124
  switch i32 %125, label %134 [
    i32 134, label %126
    i32 133, label %126
  ]

126:                                              ; preds = %120, %120
  %127 = load %struct.statx*, %struct.statx** %2, align 8
  %128 = getelementptr inbounds %struct.statx, %struct.statx* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.statx*, %struct.statx** %2, align 8
  %131 = getelementptr inbounds %struct.statx, %struct.statx* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 %129, i32 %132)
  br label %134

134:                                              ; preds = %120, %126
  br label %135

135:                                              ; preds = %134, %113
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %137 = load %struct.statx*, %struct.statx** %2, align 8
  %138 = getelementptr inbounds %struct.statx, %struct.statx* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @STATX_MODE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %223

143:                                              ; preds = %135
  %144 = load %struct.statx*, %struct.statx** %2, align 8
  %145 = getelementptr inbounds %struct.statx, %struct.statx* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 4095
  %148 = load i8, i8* %4, align 1
  %149 = sext i8 %148 to i32
  %150 = load %struct.statx*, %struct.statx** %2, align 8
  %151 = getelementptr inbounds %struct.statx, %struct.statx* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @S_IRUSR, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 114, i32 45
  %158 = load %struct.statx*, %struct.statx** %2, align 8
  %159 = getelementptr inbounds %struct.statx, %struct.statx* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @S_IWUSR, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i32 119, i32 45
  %166 = load %struct.statx*, %struct.statx** %2, align 8
  %167 = getelementptr inbounds %struct.statx, %struct.statx* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @S_IXUSR, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i32 120, i32 45
  %174 = load %struct.statx*, %struct.statx** %2, align 8
  %175 = getelementptr inbounds %struct.statx, %struct.statx* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @S_IRGRP, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i32 114, i32 45
  %182 = load %struct.statx*, %struct.statx** %2, align 8
  %183 = getelementptr inbounds %struct.statx, %struct.statx* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @S_IWGRP, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i32 119, i32 45
  %190 = load %struct.statx*, %struct.statx** %2, align 8
  %191 = getelementptr inbounds %struct.statx, %struct.statx* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @S_IXGRP, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i32 120, i32 45
  %198 = load %struct.statx*, %struct.statx** %2, align 8
  %199 = getelementptr inbounds %struct.statx, %struct.statx* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @S_IROTH, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i32 114, i32 45
  %206 = load %struct.statx*, %struct.statx** %2, align 8
  %207 = getelementptr inbounds %struct.statx, %struct.statx* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @S_IWOTH, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  %212 = zext i1 %211 to i64
  %213 = select i1 %211, i32 119, i32 45
  %214 = load %struct.statx*, %struct.statx** %2, align 8
  %215 = getelementptr inbounds %struct.statx, %struct.statx* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @S_IXOTH, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i32 120, i32 45
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0), i32 %147, i32 %149, i32 %157, i32 %165, i32 %173, i32 %181, i32 %189, i32 %197, i32 %205, i32 %213, i32 %221)
  br label %223

223:                                              ; preds = %143, %135
  %224 = load %struct.statx*, %struct.statx** %2, align 8
  %225 = getelementptr inbounds %struct.statx, %struct.statx* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @STATX_UID, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %223
  %231 = load %struct.statx*, %struct.statx** %2, align 8
  %232 = getelementptr inbounds %struct.statx, %struct.statx* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 4
  %234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32 %233)
  br label %235

235:                                              ; preds = %230, %223
  %236 = load %struct.statx*, %struct.statx** %2, align 8
  %237 = getelementptr inbounds %struct.statx, %struct.statx* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @STATX_GID, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %235
  %243 = load %struct.statx*, %struct.statx** %2, align 8
  %244 = getelementptr inbounds %struct.statx, %struct.statx* %243, i32 0, i32 8
  %245 = load i32, i32* %244, align 8
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i32 %245)
  br label %247

247:                                              ; preds = %242, %235
  %248 = load %struct.statx*, %struct.statx** %2, align 8
  %249 = getelementptr inbounds %struct.statx, %struct.statx* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @STATX_ATIME, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %247
  %255 = load %struct.statx*, %struct.statx** %2, align 8
  %256 = getelementptr inbounds %struct.statx, %struct.statx* %255, i32 0, i32 14
  %257 = call i32 @print_time(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i32* %256)
  br label %258

258:                                              ; preds = %254, %247
  %259 = load %struct.statx*, %struct.statx** %2, align 8
  %260 = getelementptr inbounds %struct.statx, %struct.statx* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @STATX_MTIME, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %258
  %266 = load %struct.statx*, %struct.statx** %2, align 8
  %267 = getelementptr inbounds %struct.statx, %struct.statx* %266, i32 0, i32 13
  %268 = call i32 @print_time(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i32* %267)
  br label %269

269:                                              ; preds = %265, %258
  %270 = load %struct.statx*, %struct.statx** %2, align 8
  %271 = getelementptr inbounds %struct.statx, %struct.statx* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @STATX_CTIME, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %269
  %277 = load %struct.statx*, %struct.statx** %2, align 8
  %278 = getelementptr inbounds %struct.statx, %struct.statx* %277, i32 0, i32 12
  %279 = call i32 @print_time(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32* %278)
  br label %280

280:                                              ; preds = %276, %269
  %281 = load %struct.statx*, %struct.statx** %2, align 8
  %282 = getelementptr inbounds %struct.statx, %struct.statx* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @STATX_BTIME, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %280
  %288 = load %struct.statx*, %struct.statx** %2, align 8
  %289 = getelementptr inbounds %struct.statx, %struct.statx* %288, i32 0, i32 11
  %290 = call i32 @print_time(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i32* %289)
  br label %291

291:                                              ; preds = %287, %280
  %292 = load %struct.statx*, %struct.statx** %2, align 8
  %293 = getelementptr inbounds %struct.statx, %struct.statx* %292, i32 0, i32 9
  %294 = load i32, i32* %293, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %369

296:                                              ; preds = %291
  %297 = load %struct.statx*, %struct.statx** %2, align 8
  %298 = getelementptr inbounds %struct.statx, %struct.statx* %297, i32 0, i32 10
  %299 = load i32, i32* %298, align 8
  %300 = sext i32 %299 to i64
  %301 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i64 %300)
  store i32 56, i32* %8, align 4
  br label %302

302:                                              ; preds = %364, %296
  %303 = load i32, i32* %8, align 4
  %304 = icmp sge i32 %303, 0
  br i1 %304, label %305, label %367

305:                                              ; preds = %302
  %306 = load %struct.statx*, %struct.statx** %2, align 8
  %307 = getelementptr inbounds %struct.statx, %struct.statx* %306, i32 0, i32 10
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* %8, align 4
  %310 = ashr i32 %308, %309
  %311 = trunc i32 %310 to i8
  store i8 %311, i8* %5, align 1
  %312 = load %struct.statx*, %struct.statx** %2, align 8
  %313 = getelementptr inbounds %struct.statx, %struct.statx* %312, i32 0, i32 9
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* %8, align 4
  %316 = ashr i32 %314, %315
  %317 = trunc i32 %316 to i8
  store i8 %317, i8* %6, align 1
  store i32 7, i32* %7, align 4
  br label %318

318:                                              ; preds = %355, %305
  %319 = load i32, i32* %7, align 4
  %320 = icmp sge i32 %319, 0
  br i1 %320, label %321, label %358

321:                                              ; preds = %318
  %322 = load i32, i32* %8, align 4
  %323 = load i32, i32* %7, align 4
  %324 = add nsw i32 %322, %323
  store i32 %324, i32* %9, align 4
  %325 = load i8, i8* %6, align 1
  %326 = zext i8 %325 to i32
  %327 = and i32 %326, 128
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %331, label %329

329:                                              ; preds = %321
  %330 = call i32 @putchar(i8 signext 46)
  br label %346

331:                                              ; preds = %321
  %332 = load i8, i8* %5, align 1
  %333 = zext i8 %332 to i32
  %334 = and i32 %333, 128
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %343

336:                                              ; preds = %331
  %337 = load i32, i32* %9, align 4
  %338 = sub nsw i32 63, %337
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [65 x i8], [65 x i8]* @dump_statx.attr_representation, i64 0, i64 %339
  %341 = load i8, i8* %340, align 1
  %342 = call i32 @putchar(i8 signext %341)
  br label %345

343:                                              ; preds = %331
  %344 = call i32 @putchar(i8 signext 45)
  br label %345

345:                                              ; preds = %343, %336
  br label %346

346:                                              ; preds = %345, %329
  %347 = load i8, i8* %5, align 1
  %348 = zext i8 %347 to i32
  %349 = shl i32 %348, 1
  %350 = trunc i32 %349 to i8
  store i8 %350, i8* %5, align 1
  %351 = load i8, i8* %6, align 1
  %352 = zext i8 %351 to i32
  %353 = shl i32 %352, 1
  %354 = trunc i32 %353 to i8
  store i8 %354, i8* %6, align 1
  br label %355

355:                                              ; preds = %346
  %356 = load i32, i32* %7, align 4
  %357 = add nsw i32 %356, -1
  store i32 %357, i32* %7, align 4
  br label %318

358:                                              ; preds = %318
  %359 = load i32, i32* %8, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %358
  %362 = call i32 @putchar(i8 signext 32)
  br label %363

363:                                              ; preds = %361, %358
  br label %364

364:                                              ; preds = %363
  %365 = load i32, i32* %8, align 4
  %366 = sub nsw i32 %365, 8
  store i32 %366, i32* %8, align 4
  br label %302

367:                                              ; preds = %302
  %368 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  br label %369

369:                                              ; preds = %367, %291
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @print_time(i8*, i32*) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
