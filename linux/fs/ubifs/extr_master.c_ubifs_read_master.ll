; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_master.c_ubifs_read_master.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_master.c_ubifs_read_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_10__*, i64, i64, %struct.TYPE_8__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_11__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EUCLEAN = common dso_local global i32 0, align 4
@UBIFS_MST_RCVRY = common dso_local global i32 0, align 4
@UBIFS_MST_NO_ORPHS = common dso_local global i32 0, align 4
@UBIFS_MIN_LEB_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"bad leb_cnt on master node\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Auto resizing (master) from %d LEBs to %d LEBs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_read_master(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %7, i32 0, i32 25
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.TYPE_10__* @kzalloc(i32 %9, i32 %10)
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %12, i32 0, i32 4
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %13, align 8
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %436

21:                                               ; preds = %1
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %23 = call i32 @scan_for_master(%struct.ubifs_info* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @EUCLEAN, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %33 = call i32 @ubifs_recover_master_node(%struct.ubifs_info* %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %436

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %21
  %41 = load i32, i32* @UBIFS_MST_RCVRY, align 4
  %42 = xor i32 %41, -1
  %43 = call i32 @cpu_to_le32(i32 %42)
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %45 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %44, i32 0, i32 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %43
  store i32 %49, i32* %47, align 8
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %50, i32 0, i32 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 29
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i8* @le64_to_cpu(i8* %55)
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %58 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %57, i32 0, i32 24
  store i8* %56, i8** %58, align 8
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %60 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %59, i32 0, i32 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 28
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @le64_to_cpu(i8* %63)
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %66 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %65, i32 0, i32 23
  store i8* %64, i8** %66, align 8
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %68 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %67, i32 0, i32 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 27
  %71 = load i8*, i8** %70, align 8
  %72 = call i8* @le64_to_cpu(i8* %71)
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %74 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %73, i32 0, i32 22
  store i8* %72, i8** %74, align 8
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %76 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %75, i32 0, i32 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @le32_to_cpu(i32 %79)
  %81 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %82 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  store i8* %80, i8** %83, align 8
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @le32_to_cpu(i32 %88)
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %91 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  store i8* %89, i8** %92, align 8
  %93 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %94 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %93, i32 0, i32 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @le32_to_cpu(i32 %97)
  %99 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %100 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  store i8* %98, i8** %101, align 8
  %102 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %103 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %102, i32 0, i32 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i8* @le32_to_cpu(i32 %106)
  %108 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %109 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %108, i32 0, i32 21
  store i8* %107, i8** %109, align 8
  %110 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %111 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %110, i32 0, i32 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @le32_to_cpu(i32 %114)
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %117 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %116, i32 0, i32 20
  store i8* %115, i8** %117, align 8
  %118 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %119 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %118, i32 0, i32 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = call i8* @le32_to_cpu(i32 %122)
  %124 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %125 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %124, i32 0, i32 19
  store i8* %123, i8** %125, align 8
  %126 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %127 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %126, i32 0, i32 4
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @le32_to_cpu(i32 %130)
  %132 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %133 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %132, i32 0, i32 18
  store i8* %131, i8** %133, align 8
  %134 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %135 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %134, i32 0, i32 4
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 26
  %138 = load i8*, i8** %137, align 8
  %139 = call i8* @le64_to_cpu(i8* %138)
  %140 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %141 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %140, i32 0, i32 7
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  store i8* %139, i8** %142, align 8
  %143 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %144 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %143, i32 0, i32 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 8
  %148 = call i8* @le32_to_cpu(i32 %147)
  %149 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %150 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %149, i32 0, i32 17
  store i8* %148, i8** %150, align 8
  %151 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %152 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %151, i32 0, i32 4
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 9
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @le32_to_cpu(i32 %155)
  %157 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %158 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %157, i32 0, i32 16
  store i8* %156, i8** %158, align 8
  %159 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %160 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %159, i32 0, i32 4
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 10
  %163 = load i32, i32* %162, align 8
  %164 = call i8* @le32_to_cpu(i32 %163)
  %165 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %166 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %165, i32 0, i32 15
  store i8* %164, i8** %166, align 8
  %167 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %168 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %167, i32 0, i32 4
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 11
  %171 = load i32, i32* %170, align 4
  %172 = call i8* @le32_to_cpu(i32 %171)
  %173 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %174 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %173, i32 0, i32 14
  store i8* %172, i8** %174, align 8
  %175 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %176 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %175, i32 0, i32 4
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 12
  %179 = load i32, i32* %178, align 8
  %180 = call i8* @le32_to_cpu(i32 %179)
  %181 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %182 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %181, i32 0, i32 13
  store i8* %180, i8** %182, align 8
  %183 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %184 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %183, i32 0, i32 4
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 13
  %187 = load i32, i32* %186, align 4
  %188 = call i8* @le32_to_cpu(i32 %187)
  %189 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %190 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %189, i32 0, i32 12
  store i8* %188, i8** %190, align 8
  %191 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %192 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %191, i32 0, i32 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 14
  %195 = load i32, i32* %194, align 8
  %196 = call i8* @le32_to_cpu(i32 %195)
  %197 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %198 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %197, i32 0, i32 11
  store i8* %196, i8** %198, align 8
  %199 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %200 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %199, i32 0, i32 4
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 15
  %203 = load i32, i32* %202, align 4
  %204 = call i8* @le32_to_cpu(i32 %203)
  %205 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %206 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %205, i32 0, i32 10
  store i8* %204, i8** %206, align 8
  %207 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %208 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %207, i32 0, i32 4
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 16
  %211 = load i32, i32* %210, align 8
  %212 = call i8* @le32_to_cpu(i32 %211)
  %213 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %214 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %213, i32 0, i32 9
  store i8* %212, i8** %214, align 8
  %215 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %216 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %215, i32 0, i32 4
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 17
  %219 = load i32, i32* %218, align 4
  %220 = call i8* @le32_to_cpu(i32 %219)
  %221 = ptrtoint i8* %220 to i32
  %222 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %223 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  store i32 %221, i32* %224, align 8
  %225 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %226 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %225, i32 0, i32 4
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 18
  %229 = load i32, i32* %228, align 8
  %230 = call i8* @le32_to_cpu(i32 %229)
  %231 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %232 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 6
  store i8* %230, i8** %233, align 8
  %234 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %235 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %234, i32 0, i32 4
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 19
  %238 = load i32, i32* %237, align 4
  %239 = call i8* @le32_to_cpu(i32 %238)
  %240 = ptrtoint i8* %239 to i32
  store i32 %240, i32* %5, align 4
  %241 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %242 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %241, i32 0, i32 4
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 21
  %245 = load i8*, i8** %244, align 8
  %246 = call i8* @le64_to_cpu(i8* %245)
  %247 = ptrtoint i8* %246 to i32
  %248 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %249 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 1
  store i32 %247, i32* %250, align 4
  %251 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %252 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %251, i32 0, i32 4
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 25
  %255 = load i8*, i8** %254, align 8
  %256 = call i8* @le64_to_cpu(i8* %255)
  %257 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %258 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %257, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 5
  store i8* %256, i8** %259, align 8
  %260 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %261 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %260, i32 0, i32 4
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 24
  %264 = load i8*, i8** %263, align 8
  %265 = call i8* @le64_to_cpu(i8* %264)
  %266 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %267 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 4
  store i8* %265, i8** %268, align 8
  %269 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %270 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %269, i32 0, i32 4
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 23
  %273 = load i8*, i8** %272, align 8
  %274 = call i8* @le64_to_cpu(i8* %273)
  %275 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %276 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %275, i32 0, i32 3
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 3
  store i8* %274, i8** %277, align 8
  %278 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %279 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %278, i32 0, i32 4
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 20
  %282 = load i8*, i8** %281, align 8
  %283 = call i8* @le64_to_cpu(i8* %282)
  %284 = ptrtoint i8* %283 to i32
  %285 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %286 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %285, i32 0, i32 3
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 2
  store i32 %284, i32* %287, align 8
  %288 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %289 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %290 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %289, i32 0, i32 4
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 22
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %295 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @ubifs_copy_hash(%struct.ubifs_info* %288, i32 %293, i32 %297)
  %299 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %300 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %299, i32 0, i32 7
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 0
  %302 = load i8*, i8** %301, align 8
  %303 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %304 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %303, i32 0, i32 8
  store i8* %302, i8** %304, align 8
  %305 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %306 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %305, i32 0, i32 4
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* @UBIFS_MST_NO_ORPHS, align 4
  %311 = call i32 @cpu_to_le32(i32 %310)
  %312 = and i32 %309, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %40
  %315 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %316 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %315, i32 0, i32 0
  store i32 1, i32* %316, align 8
  br label %317

317:                                              ; preds = %314, %40
  %318 = load i32, i32* %5, align 4
  %319 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %320 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = icmp ne i32 %318, %321
  br i1 %322, label %323, label %423

323:                                              ; preds = %317
  %324 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %325 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* %5, align 4
  %328 = sub nsw i32 %326, %327
  store i32 %328, i32* %6, align 4
  %329 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %330 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* %5, align 4
  %333 = icmp slt i32 %331, %332
  br i1 %333, label %340, label %334

334:                                              ; preds = %323
  %335 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %336 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @UBIFS_MIN_LEB_CNT, align 4
  %339 = icmp slt i32 %337, %338
  br i1 %339, label %340, label %350

340:                                              ; preds = %334, %323
  %341 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %342 = call i32 @ubifs_err(%struct.ubifs_info* %341, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %343 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %344 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %345 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %344, i32 0, i32 4
  %346 = load %struct.TYPE_10__*, %struct.TYPE_10__** %345, align 8
  %347 = call i32 @ubifs_dump_node(%struct.ubifs_info* %343, %struct.TYPE_10__* %346)
  %348 = load i32, i32* @EINVAL, align 4
  %349 = sub nsw i32 0, %348
  store i32 %349, i32* %2, align 4
  br label %436

350:                                              ; preds = %334
  %351 = load i32, i32* %5, align 4
  %352 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %353 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @dbg_mnt(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %351, i32 %354)
  %356 = load i32, i32* %6, align 4
  %357 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %358 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %357, i32 0, i32 3
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = add nsw i32 %360, %356
  store i32 %361, i32* %359, align 8
  %362 = load i32, i32* %6, align 4
  %363 = sext i32 %362 to i64
  %364 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %365 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %364, i32 0, i32 6
  %366 = load i64, i64* %365, align 8
  %367 = mul nsw i64 %363, %366
  %368 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %369 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %368, i32 0, i32 3
  %370 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = sext i32 %371 to i64
  %373 = add nsw i64 %372, %367
  %374 = trunc i64 %373 to i32
  store i32 %374, i32* %370, align 4
  %375 = load i32, i32* %6, align 4
  %376 = sext i32 %375 to i64
  %377 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %378 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %377, i32 0, i32 5
  %379 = load i64, i64* %378, align 8
  %380 = mul nsw i64 %376, %379
  %381 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %382 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %381, i32 0, i32 3
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = sext i32 %384 to i64
  %386 = add nsw i64 %385, %380
  %387 = trunc i64 %386 to i32
  store i32 %387, i32* %383, align 8
  %388 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %389 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = call i32 @cpu_to_le32(i32 %390)
  %392 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %393 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %392, i32 0, i32 4
  %394 = load %struct.TYPE_10__*, %struct.TYPE_10__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %394, i32 0, i32 19
  store i32 %391, i32* %395, align 4
  %396 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %397 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %396, i32 0, i32 3
  %398 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = call i32 @cpu_to_le32(i32 %399)
  %401 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %402 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %401, i32 0, i32 4
  %403 = load %struct.TYPE_10__*, %struct.TYPE_10__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 17
  store i32 %400, i32* %404, align 4
  %405 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %406 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %405, i32 0, i32 3
  %407 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = call i8* @cpu_to_le64(i32 %408)
  %410 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %411 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %410, i32 0, i32 4
  %412 = load %struct.TYPE_10__*, %struct.TYPE_10__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %412, i32 0, i32 21
  store i8* %409, i8** %413, align 8
  %414 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %415 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %414, i32 0, i32 3
  %416 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 8
  %418 = call i8* @cpu_to_le64(i32 %417)
  %419 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %420 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %419, i32 0, i32 4
  %421 = load %struct.TYPE_10__*, %struct.TYPE_10__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %421, i32 0, i32 20
  store i8* %418, i8** %422, align 8
  br label %423

423:                                              ; preds = %350, %317
  %424 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %425 = call i32 @validate_master(%struct.ubifs_info* %424)
  store i32 %425, i32* %4, align 4
  %426 = load i32, i32* %4, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %430

428:                                              ; preds = %423
  %429 = load i32, i32* %4, align 4
  store i32 %429, i32* %2, align 4
  br label %436

430:                                              ; preds = %423
  %431 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %432 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %433 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %432, i32 0, i32 2
  %434 = call i32 @dbg_old_index_check_init(%struct.ubifs_info* %431, %struct.TYPE_11__* %433)
  store i32 %434, i32* %4, align 4
  %435 = load i32, i32* %4, align 4
  store i32 %435, i32* %2, align 4
  br label %436

436:                                              ; preds = %430, %428, %340, %37, %18
  %437 = load i32, i32* %2, align 4
  ret i32 %437
}

declare dso_local %struct.TYPE_10__* @kzalloc(i32, i32) #1

declare dso_local i32 @scan_for_master(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_recover_master_node(%struct.ubifs_info*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @le64_to_cpu(i8*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @ubifs_copy_hash(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*) #1

declare dso_local i32 @ubifs_dump_node(%struct.ubifs_info*, %struct.TYPE_10__*) #1

declare dso_local i32 @dbg_mnt(i8*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @validate_master(%struct.ubifs_info*) #1

declare dso_local i32 @dbg_old_index_check_init(%struct.ubifs_info*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
